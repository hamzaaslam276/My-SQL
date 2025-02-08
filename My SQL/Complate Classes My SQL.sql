create database tamp1;
create database Collage;
drop database tamp1;
use Collage;
create table student (id int primary key, name varchar(10), age int not null);
show tables;
select * from student;
insert into student values(1 , 'Hamza', 30);
insert into student values(2 , 'Saleem', 33);
insert into student values(3 , 'Majid', 35);
create database if not exists Collage;
drop database if exists abc;
create table student2(rollno int primary key , name varchar (20));
show tables;
select * from student2; 
insert into student2 (rollno, name) values (1, 'Hamza');
DESC student2; 
create database xyz;
use xyz;
create table employee_info(id int primary key , name varchar(20), salary int);
insert into employee_info (id, name, salary) values (1, "adam", 25000);
insert into employee_info (id, name, salary) values (2, "bob", 30000);
insert into employee_info (id, name, salary) values (3, "casey", 40000);
select * from employee_info;
desc employee_info;
-- Constraints
-- 1.NOT NULL, 2.UNIQUE, 3.PRIMARY KEY, 4.FOREIGN KEY, 5.DEFAULT, 6.CHECK
create table temp1( id int unique);
insert into temp1 (id) values  (10);
select * from temp1;
insert into temp1 (id) values (10);
create table temp2( id int, name varchar(50), age int , city varchar(50), primary key (id, name));
insert into temp2 (id, name, age, city) values (1, 'Hamza', 30, 'Fsd');
select * from temp2;
insert into temp2 (id,name,age,city) values (1, "Ali" , 33, "Sarghuda"), (2, "Majid" , 35, "Lhr");
insert into temp2 (id,name,age,city) values (1, "Ali" , 33, "Sarghuda");
select* from temp2;
-- FOREIGN KEY
create table temp3 ( cust_id int, foreign key (cust_id) references employee_info(id));
select * from temp3;
-- DEFAULT
create table emp (id int, salary int default 25000);
insert into emp (id) values (276);
select * from emp;
-- CHECK
create table std (id int, name varchar(20), age int check  (age >= 18));
insert into std (id, name, age) values (1, 'Hamza', 30);
select * from std;
insert into std (id, name, age) values (2, "Khizar", 1);
create table stu ( rollno int primary key, name varchar (20), marks int not null, grade varchar(1), city varchar(20));
insert into stu (rollno, name, marks, grade, city) values 
(1, 'Hamza' , 89 , 'A', "Fsd"),
(2, 'Bilal' , 95 , 'A', "Fsd"),
(3, 'Hafiz' , 55 , 'C', "Lhr"),
(4, 'Majid' , 85 , 'B', "Lhr"),
(5, 'Afshan' , 59 , 'B', "Fsd"),
(6, 'Ali' , 79 , 'A', "Sarguda"),
(7, 'Bilal' , 29 , 'F', "Fsd");
select * from stu;
-- unique values
select distinct city from stu;
-- CLAUSE
-- Where Clause
select * from stu where marks > 80;
select * from stu where marks > 80 and city = 'Fsd';
-- using Operators is WHERE 
-- (Arithmetic Operators{+,-,*,/,%}
select * from stu where marks+10 > 100;
-- Comparison Operators{=,!=,>,>=,<,<=}
-- Logical Operators{AND, OR, NOT, BETWEEN, ALL, LIKE, ANY, IN, NOT}
select * from stu where marks between 80 and 99;
-- Bitwise Operators { &(Bitwise AND), | (Bitwise OR)}
-- Limit Clause
select * from stu  where marks > 50 limit 3;
-- Order By Clause
select * from stu order by city desc;
select * from stu order by marks desc limit 3;
-- Aggregate Functions
-- COUNT, MAX, MIN, SUM, AVG
select max(marks) from stu;
select min(marks) from stu;
select avg(marks) from stu;
select count(name) from stu;
-- Group By Clause
select city,name , count(rollno) from stu group by city,name;
-- write the Query to find avg marks in each city in ascending order.
select city, avg(marks) from stu group by city order by avg(marks);
select grade, count(rollno) from stu group by grade order by grade;
-- Having Clause
select city, count(rollno) from stu group by city having max(marks) > 90;
select * from stu;
-- General Order 
-- SELECT column(s)
-- FROM tabl_name
-- WHERE condition
-- GROUP BY column(s)
-- HAVING condition
-- ORDER BY column(s) ASC;
select city
from stu
where grade = 'A'
group by city
having max(marks) >= 79
order by city desc;
-- update
update stu set grade = 'A' where grade ='O';
set sql_safe_updates = 0;
update stu set marks = 32 where rollno = 7;
update stu set marks = marks - 1;
delete from stu where marks < 33;
-- Revisiting FK
create table dept(id int primary key, name varchar(20));
insert into dept (id, name) values (101, 'Mechanical'), (102, 'English'), (103, 'Urdu'), (104, 'Math');
select * from dept;
update dept set id = 111
where id = 101;
create table teacher(id int primary key , name varchar(20), dept_id int, foreign key (dept_id) references dept(id)
on update cascade
on delete cascade);
insert into teacher(id,name,dept_id) values (1,'Hamza',101),(2, 'Ali',102), (3, 'Majid',103), (4, 'Saleem',104);
select * from teacher;
-- Alter (to change the schema)
-- ADD Column
-- DROP Column
-- RENAME Column
-- CHANGE Column
-- MODIFY Column
alter table stu add column age int not null default 19;
alter table stu drop column age;
alter table stu add column age int not null default 30;
select * from stu;
alter table stu change name full_name varchar(30);
alter table stu drop age;
-- truncate(to delete table's data)
-- truncate table table_name
show databases;
use collage;
show tables;
select * from stu;
-- SQL Joins
-- INNER JOIN
create table student1(stu_id int primary key , stu_name varchar(20));
insert into student1(stu_id, stu_name) values (50, "Hamza"), (69, "Sami"), (71, "Saleem"), (72, "Majid");
select * from student1;
create table course(cour_id int primary key , cour_name varchar(30));
insert into course(cour_id, cour_name) values(101, "Pyton"), (50, "Data Science"), (71, "ML"), (102, "SQL");
select *from course;
select * from student1 as A inner join course as B on A.stu_id = B.cour_id;
-- LEFT JOIN
select * from student1 as A left join course as B on A.stu_id = B.cour_id;
-- RIGHT JOIN
select * from student1 as A right join course as B on A.stu_id = B.cour_id;
-- FULL JOIN
select * from student1 as A left join course as B on A.stu_id = B.cour_id
union
select * from student1 as A right join course as B on A.stu_id = B.cour_id;
-- Think & Ans
-- Left Exclusive Join
select * from student1 as A left join course as B on A.stu_id = B.cour_id where B.cour_id is null;
-- Right Exclusive Join
select * from student1 as A right join course as B on A.stu_id = B.cour_id where A.stu_id is null;
-- self join
create table emplayee(id int primary key, name varchar(30), manger_id varchar(30));
insert into emplayee(id, name , manger_id) values 
(101, "Hamza", 103),
(102, "Saleem", 104),
(103, "Majid",null),
(104, "Khizar", 103);
select * from emplayee;
SELECT * 
FROM emplayee as a
JOIN emplayee as b
ON a.id = b.manger_id;
SELECT a.name as manger_name, b.name 
FROM emplayee as a
JOIN emplayee as b
ON a.id = b.manger_id;
-- Union
select name from emplayee
union
select name from emplayee;
-- SQL Sub Queries (A Subquery or Inner query or a Nested query is a query within another SQL query.)
-- Example 
-- Step 1. Find the avg of class
-- Step 2. Find the names of students with marks > avg
select avg(marks) from stu;
select full_name, marks from stu where marks > 76;
select full_name, marks from stu where marks > (select avg(marks) from stu);
-- Example 
-- Step 1. Find the even roll numbers
-- Step 2. Find the names of students with even roll no
select rollno, full_name from stu where rollno in (select rollno from stu where rollno % 2 = 0);
-- Example 
-- Step 1. Find the students of Fsd
-- Step 2. Find their max marks using the sublist in step 1
select full_name,marks from stu where marks in (select max(marks) from stu where city = 'Fsd');
-- MySQL Views
select * from stu;
create view view1 as select rollno, full_name, marks from stu;
select * from view1;
drop view view1;
