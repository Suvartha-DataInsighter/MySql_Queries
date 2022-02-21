/* Data Definition Language Commands..*/
use my_db;
create table student
(s_no int,s_name varchar(10),s_gender varchar(4));
# We are describing the column that table consists of.....alter
#describe student
insert into student values(201,"James","M");
insert into student values(202,"Kensy","F");
insert into student values(203,"karthikeya","M");
insert into student values(204,"Sanvy","F");
insert into student values(205,"Joseph","M");
insert into student values(206,"Nicky","M");
insert into student values(207,"Stellah","F");
insert into student values(208,"Shruthi","F");
insert into student values(209,"Sandy","F");
insert into student values(210,"Joel","M");
insert into student values(201,"James","M");
insert into student values(21,"James","M");
commit;
select * from student
# By using 'alter' command ,we creating new_column into the student table
ALTER table student add(s_marks int(4));
# after the column creation ,we have to update the values for the created column
# We need to use Update() command for adding values
/* Renaming the existing column name..*/
ALTER TABLE student RENAME COLUMN s_gender TO gender;

