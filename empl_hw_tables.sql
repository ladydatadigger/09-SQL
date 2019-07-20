DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);



CREATE TABLE employees(
	emp_no VARCHAR NOT NULL PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(1),
	hire_date DATE
);


-- 	manager_id SERIAL PRIMARY KEY,
CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no VARCHAR NOT NULL, 
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-- 	emp_id SERIAL PRIMARY KEY,
CREATE TABLE dept_emp (
	emp_no VARCHAR NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-- 	salary_id SERIAL PRIMARY KEY,
CREATE TABLE salaries(
	emp_no VARCHAR NOT NULL,
	salary INT NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-- 	title_id SERIAL PRIMARY KEY,
CREATE TABLE titles(
	emp_no VARCHAR NOT NULL,
	title VARCHAR,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;
SELECT * FROM salaries;
SELECT * FROM titles;

ALTER TABLE dept_manager
ADD COLUMN manager_id SERIAL PRIMARY KEY;

ALTER TABLE dept_emp
ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE salaries
ADD COLUMN salary_id SERIAL PRIMARY KEY;

ALTER TABLE titles
ADD COLUMN title_id SERIAL PRIMARY KEY;
