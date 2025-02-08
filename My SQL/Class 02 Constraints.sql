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
