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