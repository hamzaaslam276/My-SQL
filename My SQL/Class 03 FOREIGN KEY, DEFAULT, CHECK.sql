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