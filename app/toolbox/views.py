import os
import sys
import time
import json
import pymysql
import traceback
import cx_Oracle
# import paramiko
# from .oktools_forms import *

from flask import render_template, redirect, request, url_for, flash
from flask_login import login_user, logout_user, login_required, \
    current_user
from . import toolbox
from .. import db


@toolbox.route('/')
def index():
    return render_template('toolbox/tbase.html')


@toolbox.route('/choice',methods=['GET','POST'])
def choice():
    conn_my = pymysql.connect(host='192.168.200.76', port=13306, user='root', password='hzmcmysql', db='hzmc_data')
    cur_my = conn_my.cursor()
    db_sql = 'select ohost, dbname, inst, israc, inst_id, user, AES_DECRYPT(opass,md5(ohost)), oport from ohzmc'
    cur_my.execute(db_sql)
    db_list = cur_my.fetchall()
    col_name_list = ['主机','数据库名','实例名','是否RAC','实例编号' ]

    cur_my.close()
    conn_my.close()
    return render_template('toolbox/choice.html', db_list = db_list, col_name_list = col_name_list )

@toolbox.route('/block',methods=['GET','POST'])
def block():
    ohost = request.args.get('ohost')
    dbname = request.args.get('dbname')
    conn_my = pymysql.connect(host='192.168.200.76', port=13306, user='root', password='hzmcmysql', db='hzmc_data')
    cur_my = conn_my.cursor()
    db_sql = '''select ohost, dbname, inst, israc, inst_id, user, AES_DECRYPT(opass,md5(ohost)), oport from ohzmc
                  where ohost = \'%s\' and dbname = \'%s\'
             '''
    cur_my.execute(db_sql % (ohost, dbname) )
    info_log = cur_my.fetchall()
    cur_my.close()
    conn_my.close()
    ouser = info_log[0][5]
    opass = info_log[0][6].decode('utf-8')
    str_conn = info_log[0][0] + ':' + str(info_log[0][7]) + '/' + info_log[0][2]
    print(ouser)
    print(opass)
    print(str_conn)
    db1 = cx_Oracle.connect(ouser , opass, str_conn )
    # db1 = cx_Oracle.connect('lhb', 'a', '192.168.200.222:1521/orcl')
    #db1 = cx_Oracle.connect('lhb', 'a', '192.168.153.101:1521/VH1')
    cursor = db1.cursor()

    str_result = '运行日志\n'
    col_name_list = ['单选','SID','用户名','锁持有时间(秒)','事务开始时间','占用回滚块数','Client_Info','阻塞会话数',
                     'SQL_ID','正在执行SQL语句']
    sql1 = '''select b.sid, b.username, a.ctime, c.START_TIME, nvl(c.USED_UBLK,0), b.CLIENT_INFO, 
              decode(a.block,0 ,0,(select count(*) from v$lock where id1=a.id1 and id2=a.id2)-1) block_session,
              b.sql_id, substr(d.sql_text,1,30) sql, a.block, b.SERIAL#, a.id1, a.id2
              from v$lock a, v$session b,v$transaction c,v$sql d where a.type='TX' and a.sid=b.sid and b.taddr=c.addr(+) 
              and b.sql_id=d.sql_id(+)
              order by a.id1,a.id2, a.block desc
         '''
    sql2 = '''select b.sid, b.username, a.ctime, c.START_TIME, c.USED_UBLK, b.CLIENT_INFO, 
             (select count(*) from v$lock where id1=a.id1 and id2=a.id2)-1 block_session,
             b.sql_id, substr(d.sql_text,1,30) sql, a.block, b.SERIAL#, a.id1, a.id2
             from v$lock a, v$session b, v$transaction c, v$sql d where a.type=\'TX\' and a.block>=1 and a.sid=b.sid 
             and b.taddr=c.addr and b.sql_id=d.sql_id(+)
           '''
    sql = sql2
    button_oc = 'bn_open'
    if request.method=='POST':
        if request.form['bn'] == 'bn_open':
            sql = sql1
            button_oc = 'bn_close'
        elif request.form['bn'] == 'bn_log':
            conn_my = pymysql.connect(host='192.168.200.76', port=13306, user='root', password='hzmcmysql',db = 'ok_log')
            cur_my = conn_my.cursor()

            cursor.execute(sql1)
            log_list = cursor.fetchall()

            for rec in log_list :
                insert_sql = 'insert into kill_block values (now(), '
                for col in rec :
                    if type(col) == int :
                        djf = ''
                    else :
                        djf = '\"'
                    insert_sql = insert_sql + djf + str(col) + djf + ', '
                insert_sql = insert_sql[0:-2] + ')'
                print(insert_sql)
                print('-----------------')
                cur_my.execute(insert_sql)
                str_result = insert_sql + '\n'+ str_result
            cur_my.close()
            conn_my.close()
        elif request.form['bn'] == 'bn_kill':
            host = '192.168.200.222'
            #host = '192.168.153.101'
            user = 'oracle'
            password = 'hzmcdba'
            t = paramiko.Transport(host, 22)
            t.connect(username=user, password=password)
            sftp = paramiko.SFTPClient.from_transport(t)
            sftp.put('G:\kill_block.sh', '/tmp/kill_block.sh')
            t.close()
            s = paramiko.SSHClient()
            s.load_system_host_keys()
            s.set_missing_host_key_policy(paramiko.AutoAddPolicy())
            s.connect(host, 22, user, password)
            stdin, stdout, stderr = s.exec_command('chmod 755 /tmp/kill_block.sh')
            stdout.read()
            print ('------------------------')

            j = 0
            ss = []
            log_sid = []
            log_serial = []
            str_result = ""
            for i in request.form:
                print (i)
                if i[0:10]=='ckb_select':
                    sid=request.form[i][1:-1]+', '
                    ss.append(sid)
                    log_sid.append( sid[0 : sid.find(',')] )
                    log_serial.append( sid[sid.find(',')+1 : -2] )

                    str_result = str_result + "alter system kill session ('" + log_sid[j] + "," + log_serial[j] + "');\n"
                    print( log_sid[j] + '||'+log_serial[j] )
                    conn_my = pymysql.connect(host='192.168.200.76', port=13306, user='root', password='hzmcmysql',
                                              db='ok_log')
                    cur_my = conn_my.cursor()
                    insert_sql = "insert into kill_log(log_ts, sid, serial, spid, info) values(now(), " + log_sid[j] + "," + log_serial[j] + ",0, 'Kill Session')"
                    print ( insert_sql )
                    cur_my.execute( insert_sql )
                    cur_my.close()
                    conn_my.close()
                    j += 1

            len_ssp = 4
            k = j/len_ssp
            i = 0
            while i<k :
                ssp = ''.join(ss[i*len_ssp:(i+1)*len_ssp])
                n = (i + 1) * len_ssp <= j and len_ssp or j % len_ssp
                cmd_str = '/tmp/kill_block.sh '+ str(n) + ' \"' + ssp+'\"'
                print(cmd_str)
                # stdin, stdout, stderr = s.exec_command(cmd_str)
                s_stderr, s_stdout = stderr.read(), stdout.read()
                str_result = str_result + 'STDERR:' + s_stderr.decode('utf-8') \
                             + 'STDOUT:' + s_stdout.decode('utf-8') + '\n'
                if s_stdout.decode('utf-8') == 'OK' :
                    conn_my = pymysql.connect(host='192.168.200.76', port=13306, user='root', password='hzmcmysql',
                                              db='ok_log')
                    cur_my = conn_my.cursor()
                    insert_sql = "insert into kill_log(log_ts, sid, serial, spid, info) values(now(), 0, 0, 0, 'Kill Session Successful')"
                    print ( insert_sql )
                    cur_my.execute( insert_sql )
                    cur_my.close()
                    conn_my.close()
                    print('====================')
                else:
                    str_result = str_result + 'alter system kill session error...'

                i += 1

            # print (stderr.read(), stdin.read(), stdout.read() )
            # stdin, stdout, stderr = s.exec_command('sleep 60')
            str_result = 'alter system kill session完成，即将等待60秒后复查。\n' + str_result
            time.sleep(60)
            print('***********************************')
            print(log_sid)
            print(log_serial)
            i = 0
            k = 0
            cmd_str = 'kill -9 '
            for c_sid in log_sid :
                sql3 = '''select b.spid, a.sid, a.serial#, a.event from v$session a, v$process b  
                             where a.paddr=b.addr and a.sid = :b_sid and a.serial# = :b_serial'''
                cursor.execute(sql3, (int(log_sid[i]), int(log_serial[i]) ) )
                sess_list = cursor.fetchall()
                print (sess_list)
                if sess_list :
                    cmd_str = cmd_str + sess_list[0][0] + ' '
                    if k % len_ssp == 0 :
                        # kill
                        str_result = str_result + cmd_str + '\n'
                        print ('kill:' + cmd_str )
                        stdin, stdout, stderr = s.exec_command(cmd_str)
                        s_stderr, s_stdout = stderr.read(), stdout.read()
                        str_result = str_result + 'STDERR:' + s_stderr.decode('utf-8') \
                                      + 'STDOUT:' + s_stdout.decode('utf-8') + '\n'
                        cmd_str = 'kill -9 '
                    k += 1;
                i += 1;

            if len(cmd_str) != len('kill -9 ') :
                print('kill :' + cmd_str)
                str_result = str_result + cmd_str + '\n'
                stdin, stdout, stderr = s.exec_command(cmd_str)
                s_stderr, s_stdout = stderr.read(), stdout.read()
                str_result = str_result + 'STDERR:' + s_stderr.decode('utf-8') \
                             + 'STDOUT:' + s_stdout.decode('utf-8') + '\n'
            s.close()
            # flash(str_result)
    cursor.execute(sql)
    block_source_list = cursor.fetchall()
    cursor.close()
    db1.close()
    return render_template('toolbox/block.html', col_name_list=col_name_list, str_result=str_result,
                           block_source_list=block_source_list, button_oc=button_oc, ohost = ohost )




@toolbox.route('/add_space',methods=['GET','POST'])
@login_required
def add_space():
    dbname='246数据库'

    ora_conn=cx_Oracle.connect('system/hzmcdba@192.168.200.246/orcl')
   #ora_conn = cx_Oracle.connect('system/oracle@192.168.200.222/orcl')
    cur=ora_conn.cursor()
    myconn = pymysql.connect(host='192.168.200.76', port=13306, user='root', password='hzmcmysql', db='ok_log',
                             charset='utf8')
    mycur = myconn.cursor()
    if request.method == 'POST':
        print(request.form)
        if 'bn' in list(request.form.keys()):
            value=request.form['bn']
            sql_str='''select t_name, d_name, time,size_mb, free_mb, round(free_mb/size_mb*100,2) 
                      from (select b.name t_name, ' ' d_name , null time , round(sum(bytes)/1024/1024,0) size_mb, 
                      (select round(sum(bytes/1024/1024),0)  from dba_free_space where tablespace_name=b.name) free_mb
                      from V$DATAFILE a, v$tablespace b  where a.ts#=b.ts# group by b.name
                      union all
                      select b.name, a.name, CREATION_TIME, round(bytes/1024/1024,0) size_mb, null 
                      from V$DATAFILE a, v$tablespace b where a.ts#=b.ts# and b.name='%s' )
                      order by t_name, d_name'''%value
            logs="doing"
        elif 'butt' in list(request.form.keys()):
            if 'optionsRadios' in list(request.form.keys()):
                    value = request.form['optionsRadios']
                    mydir = request.form['space_path']
                    if "one_size" in request.form:
                        if 'unlimited' in request.form:
                            one_size = request.form['one_size']
                            size = request.form['space_size']
                            alter_str = "ALTER TABLESPACE %s ADD DATAFILE '%s' SIZE %sM AUTOEXTEND ON NEXT %sM MAXSIZE UNLIMITED" % (value, mydir, size, one_size)
                        else:
                            one_size=request.form['one_size']
                            max_size=request.form['max_size']
                            size = request.form['space_size']
                            alter_str="ALTER TABLESPACE %s ADD DATAFILE '%s' SIZE %sM AUTOEXTEND ON NEXT %sM MAXSIZE %sM" % (value, mydir, size,one_size,max_size)
                    else:
                        size = request.form['space_size']
                        alter_str = "ALTER TABLESPACE %s ADD DATAFILE '%s' SIZE %sM" % (value, mydir, size)
                    mytime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
                    log_str = '''insert into add_space values ('%s','%s',"%s")''' % (mytime, dbname, alter_str)
                    print(log_str)
                    myconn.commit()
                    try:
                        cur.execute(alter_str)
                        logs="添加成功！"
                    except:
                        logs=sys.exc_info()[1]
                    mycur.execute(log_str)
                    ora_conn.commit()
                    sql_str = '''select t_name, d_name, time,size_mb, free_mb, round(free_mb/size_mb*100,2) 
                                         from (select b.name t_name, ' ' d_name , null time , round(sum(bytes)/1024/1024,0) size_mb, 
                                         (select round(sum(bytes/1024/1024),0)  from dba_free_space where tablespace_name=b.name) free_mb
                                         from V$DATAFILE a, v$tablespace b  where a.ts#=b.ts# group by b.name
                                         union all
                                         select b.name, a.name, CREATION_TIME, round(bytes/1024/1024,0) size_mb, null 
                                         from V$DATAFILE a, v$tablespace b where a.ts#=b.ts# and b.name='%s' )
                                         order by t_name, d_name''' % value





    else:
        sql_str = '''select a.tablespace_name, ' ',null,round(b.total ,2),round(a.free,2)， round(a.free/b.total*100,2) from
                      (select tablespace_name, sum(bytes)/1024/1024 free from dba_free_space group by tablespace_name) a,
                    (select b.tablespace_name, sum(bytes)/1024/1024 total from dba_tablespaces a, dba_data_files b 
                    where a.tablespace_name=b.tablespace_name group by b.tablespace_name) b
                    where a.tablespace_name=b.tablespace_name'''
        logs="doing"
    myres = cur.execute(sql_str)
    get_list = myres.fetchall()
    value_list=[]
    print(logs)
    for v in get_list:
        v=list(v)
        if v[3] and v[5] is not None:
            v[3]=round(v[3],2)
            v[5]=round(v[5],2)
        else:
            pass
        value_list.append(v)
    col_list = ['勾选添加表空间', '表空间名', '数据文件名', '创建时间', '总空间(M)', '空闲空间(M)', '剩余空间占比(%)']
    cur.close()
    ora_conn.close()
    mycur.close()
    myconn.close()
    return render_template('/toolbox/add_space.html', value_list=value_list, col_list=col_list,logs=logs)

@toolbox.route('/get_space/<space>',methods=['GET','POST'])
@login_required
def get_space(space):
    value=space
    dbname = '246数据库'
    ora_conn = cx_Oracle.connect('system/hzmcdba@192.168.200.246/orcl')
    #ora_conn = cx_Oracle.connect('system/oracle@192.168.200.222/orcl')
    cur = ora_conn.cursor()
    myconn = pymysql.connect(host='192.168.200.76', port=13306, user='root', password='hzmcmysql', db='ok_log',
                             charset='utf8')
    mycur = myconn.cursor()
    info_str = '''select name,round(bytes/1024/1024,0) SIZE_MB 
                                      from v$datafile where CREATION_TIME=(select max(CREATION_TIME) 
                                      from V$DATAFILE where 
                                      ts#=(select ts# from  v$tablespace where name='%s') )''' % value
    inres = cur.execute(info_str)
    info_list = inres.fetchall()[0]
    dir = info_list[0]
    size = info_list[1]
    if dir.find('.') == -1:
        if dir[-1].isdigit() == False:
            t = cur.execute("select count(*) from v$datafile where name='%s'" % dir)
            te = t.fetchone()[0]
            i = 1
            while te == 1:
                mydir = dir + '0' + str(i)
                i += 1
                t = cur.execute("select count(*) from v$datafile where name='%s'" % mydir)
                te = t.fetchone()[0]
        elif dir[-2:].isdigit() == False:
            t = cur.execute("select count(*) from v$datafile where name='%s'" % dir)
            te = t.fetchone()[0]
            i = 1
            while te == 1:
                mydir = dir[:-1] + '0' + str((int(dir[-1]) + i))
                i += 1
                t = cur.execute("select count(*)  from v$datafile where name='%s'" % mydir)
                te = t.fetchone()[0]
        elif dir[-2:].isdigit() == True:
            t = cur.execute("select count(*) from v$datafile where name='%s'" % dir)
            te = t.fetchone()[0]
            i = 1
            while te == 1:
                mydir = dir[:-1] + str((int(dir[-1]) + i))
                i += 1
                t = cur.execute("select count(*) from v$datafile where name='%s'" % mydir)
                te = t.fetchone()[0]
    else:
        if dir[:dir.index('.')][-1].isdigit() == False:
            t = cur.execute("select count(*) from v$datafile where name='%s'" % dir)
            te = t.fetchone()[0]
            i = 1
            while te == 1:
                mydir = dir[:dir.index('.')] + '0' + str(i) + dir[dir.index('.'):]
                i += 1
                t = cur.execute("select count(*) from v$datafile where name='%s'" % mydir)
                te = t.fetchone()[0]
        elif dir[:dir.index('.')][-2:].isdigit() == False:
            t = cur.execute("select count(*) from v$datafile where name='%s'" % dir)
            te = t.fetchone()[0]
            i = 1
            while te == 1:
                mydir = dir[:dir.index('.')][:-1] + '0' + str((int(dir[:dir.index('.')][-1]) + i)) + dir[
                                                                                                     dir.index('.'):]
                i += 1
                t = cur.execute("select count(*) from v$datafile where name='%s'" % mydir)
                te = t.fetchone()[0]
        elif dir[:dir.index('.')][-2:].isdigit() == True:
            t = cur.execute("select count(*) from v$datafile where name='%s'" % dir)
            te = t.fetchone()[0]
            i = 1
            while te == 1:
                mydir = dir[:dir.index('.')][:-1] + str((int(dir[:dir.index('.')][-1]) + i)) + dir[dir.index('.'):]
                i += 1
                t = cur.execute("select count(*) from v$datafile where name='%s'" % mydir)
                te = t.fetchone()[0]
    data = dict()
    data["name"] = value
    data["path"] = mydir
    data["size"] = size;
    return json.dumps(data);




