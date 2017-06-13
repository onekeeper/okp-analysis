import pymysql
from config import MYSQL_HOST,MYSQL_ACCOUNT,MYSQL_PASSWORD
def initscore(mydb):
    myconn = pymysql.connect(host=MYSQL_HOST, port=3306, user=MYSQL_ACCOUNT, password=MYSQL_PASSWORD, db=mydb,charset='utf8')
    cur=myconn.cursor()
    sql=open("/web/run/initdb.sql").read()
    s=sql%((mydb,)*2707)
    try:
	cur.excute("create database %s"%mydb)
    except:
	pass
    try:
        cur.excute(s)
    except:
	pass
    myconn.commit()
    cur.close()
    myconn.close()
    sql.close()
