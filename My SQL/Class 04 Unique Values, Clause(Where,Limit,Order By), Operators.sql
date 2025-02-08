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