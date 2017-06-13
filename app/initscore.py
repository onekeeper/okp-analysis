import pymysql
from config import MYSQL_HOST,MYSQL_ACCOUNT,MYSQL_PASSWORD,MYSQL_DATABASE
def initscore(mydb):
    myconn = pymysql.connect(host=MYSQL_HOST, port=3306, user=MYSQL_ACCOUNT, password=MYSQL_PASSWORD, db=MYSQL_DATABASE,charset='utf8')
    cur=myconn.cursor()
    try:
        cur.execute("create database %s"%mydb)
    except:
        pass
    myconn1 = pymysql.connect(host=MYSQL_HOST, port=3306, user=MYSQL_ACCOUNT, password=MYSQL_PASSWORD, db=mydb,charset='utf8')
    cur1=myconn1.cursor()
    sql=open("/web/run/initdb.sql").read()
    s=sql%((mydb,)*2707)
    cur1.execute(s)
    myconn1.commit()
    cur1.close()
    myconn1.close()
    cur.close()
    myconn.close()
