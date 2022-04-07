from sqlite3 import Cursor
import pymysql
mydb=pymysql.connect(host='localhost',
        user='root', 
        password = "root",
        db = 'python_db1'
        )
mycursor=mydb.cursor()
# mycursor.execute("show tables")


mycursor.execute("create table Student(ID varchar(4),Name varchar(20),Hallticket varchar(15),Marks float(4))")