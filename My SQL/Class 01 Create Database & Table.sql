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
