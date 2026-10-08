-- create_tables.sql
SET SERVEROUTPUT ON;

BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE employees CASCADE CONSTRAINTS PURGE';
EXCEPTION
  WHEN OTHERS THEN NULL;  -- ignore if table does not exist
END;
/

BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE departments CASCADE CONSTRAINTS PURGE';
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE departments (
  dept_id    NUMBER PRIMARY KEY,
  dept_name  VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
  emp_id      NUMBER PRIMARY KEY,
  first_name  VARCHAR2(50),
  last_name   VARCHAR2(50),
  salary      NUMBER(10,2),
  hire_date   DATE,
  dept_id     NUMBER );

INSERT INTO departments VALUES (10, 'Finance');
INSERT INTO departments VALUES (20, 'Human Resources');
INSERT INTO departments VALUES (30, 'IT');

INSERT INTO employees VALUES (101, 'Alice', 'Uwase',    2500, DATE '2018-03-15', 10);
INSERT INTO employees VALUES (102, 'Jean',  'Mugisha',  4200, DATE '2020-07-01', 20);
INSERT INTO employees VALUES (103, 'Grace', 'Ingabire', 6800, DATE '2015-11-20', 30);
INSERT INTO employees VALUES (104, 'Eric',  'Habimana', 3100, DATE '2023-01-10', 10);
INSERT INTO employees VALUES (105, 'Diane', 'Umutoni',  1800, DATE '2024-05-05', 99);

COMMIT;

SELECT * FROM employees;
SELECT * FROM employees ORDER BY emp_id;
SELECT USER FROM dual;

SELECT * FROM employees ORDER BY emp_id;
 
   SELECT * FROM employees ORDER BY emp_id;
   
   UPDATE employees SET salary = 2500 WHERE emp_id = 101;
UPDATE employees SET salary = 1800 WHERE emp_id = 105;
COMMIT;
SELECT emp_id, first_name, salary FROM employees ORDER BY emp_id;

SELECT object_name, status FROM user_objects
 WHERE object_type = 'FUNCTION' ORDER BY object_name;