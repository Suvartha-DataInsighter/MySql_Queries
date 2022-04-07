import pymysql
  
def mysqlconnect():
    # To connect MySQL database
    conn = pymysql.connect(
        host='localhost',
        user='root', 
        password = "root",
        db = 'mysql_database'
        )
    print(conn)
    cursor=conn.cursor()
    Class1="CREATE TABLE Student_ab (S_id varchar(5),S_name VARCHAR(25), Hallticket varchar(15),S_marks int )";
    #print(Class1)
    cursor.execute(Class1)
    user_input= input('Update? Y/N:')
    if user_input=='Y':
    	s_id= int(input('Enter user ID: '))
    	name= input('Enter student name: ')
    	hallticket=input('hallticket:')
    	marks= float(input('marks:'))
    	autoincrement=+1
    	insert='insert into Student_ab (S_id,S_name,Hallticket,S_marks) values(%s,%s,%s,%f)'
    	values=('{0}','{1}','{2}','{3}').format(s_id,name,hallticket,marks)
    	cursor.execute(insert,values)
    	conn.commit()
    	conn.close()



if __name__ == "__main__" :
	mysqlconnect()