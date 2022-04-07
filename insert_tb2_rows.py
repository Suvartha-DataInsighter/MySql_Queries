from ast import Break
from sqlite3 import Cursor
import pymysql
mydb=pymysql.connect(host='localhost',
        user='root', 
        password = "root",
        db = 'python_db1'
        )
mycursor=mydb.cursor()

user_input= input('Do you want to enter one more Y/N:')
while True:
    
    if user_input=='Y':
        s_id= int(input('Enter user ID: '))
        name= input('Enter student name: ')
        hallticket=input('hallticket:')
        marks= float(input('marks:'))

        sql_select_query ="""select HT_No from python_db1.Student_1 where HT_No=%s"""
        mycursor.execute(sql_select_query, (hallticket))
        
        exists=mycursor.fetchall()

        if exists :
            print("already existed hallticket number")
        else:
            sql2='insert into Student_1 (ID,Name,HT_No,Marks) values(%s,%s,%s,%s)'
            values=[s_id,name,hallticket,marks]
            mycursor.execute(sql2, values)
            mydb.commit()

    else:
        break
    
