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