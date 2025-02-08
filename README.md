# SQL Database and Queries

## Overview
This repository contains SQL scripts for various database operations, including creating databases, tables, inserting data, applying constraints, and performing queries using SQL commands.

## Databases and Tables
### Created Databases:
- `Collage`
- `xyz`

### Created Tables:
- `student`
- `student2`
- `employee_info`
- `temp1`
- `temp2`
- `temp3`
- `emp`
- `std`
- `stu`
- `dept`
- `teacher`
- `student1`
- `course`
- `emplayee`

## SQL Commands Used
### Basic Database Operations:
- `CREATE DATABASE`
- `DROP DATABASE`
- `USE`
- `SHOW TABLES`

### Table Operations:
- `CREATE TABLE`
- `INSERT INTO`
- `SELECT`
- `DESC`
- `UPDATE`
- `DELETE`
- `ALTER TABLE`
- `TRUNCATE`

### Constraints Used:
- `PRIMARY KEY`
- `FOREIGN KEY`
- `NOT NULL`
- `UNIQUE`
- `DEFAULT`
- `CHECK`

### SQL Queries and Operations:
- **Filtering Data:** `WHERE`, `BETWEEN`, `LIKE`, `IN`, `LIMIT`
- **Sorting Data:** `ORDER BY`
- **Aggregations:** `COUNT()`, `MAX()`, `MIN()`, `SUM()`, `AVG()`
- **Grouping Data:** `GROUP BY`, `HAVING`
- **Updating and Deleting Data:** `UPDATE`, `DELETE`
- **Joins:** `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`
- **Self Join**
- **Union Operations**
- **Subqueries**

## Example Queries
### Create a Student Table
```sql
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(10),
    age INT NOT NULL
);
```

### Insert Data into Student Table
```sql
INSERT INTO student VALUES(1, 'Hamza', 30);
INSERT INTO student VALUES(2, 'Saleem', 33);
INSERT INTO student VALUES(3, 'Majid', 35);
```

### Select Data
```sql
SELECT * FROM student;
```

### Joins Example
```sql
SELECT * FROM student1 AS A
INNER JOIN course AS B
ON A.stu_id = B.cour_id;
```

## Usage
1. Run the SQL scripts in MySQL or any compatible SQL database management system.
2. Modify queries as needed to suit different database requirements.
3. Use joins, constraints, and clauses to manipulate and retrieve data efficiently.

## Author
**Hamza Aslam**

## License
This project is open-source. Feel free to modify and use it as needed.

