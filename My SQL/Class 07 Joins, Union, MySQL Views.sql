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
