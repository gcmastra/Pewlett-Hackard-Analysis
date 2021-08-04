-- create tables
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	frst_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

-- add two more table definitions salaries, titles, and dept_emp

SELECT count(*) from employees
-- 300024 employees thats three hundred thousand and some odd employees 


SELECT frst_name, last_name FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

--- we have a spelling mistake - when I created the employees table
--- I called the column frst_name and left out the i 
--- I may have to recreate the table which will be a pain in the butt 


SELECT count(*) FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
--- result 41380




--- this is the last comment of the night 