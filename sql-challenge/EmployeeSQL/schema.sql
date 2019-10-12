DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY
	,birth_date DATE NOT NULL
	,first_name VARCHAR(255) NOT NULL
	,last_name VARCHAR(255) NOT NULL
	,gender VARCHAR(255) NOT NULL
	,hire_date DATE NOT NULL
);

CREATE TABLE departments(
	dept_no VARCHAR(225) NOT NULL PRIMARY KEY
	,dept_name VARCHAR(225) NOT NULL
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(255) NOT NULL
	,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	,emp_no INT NOT NULL
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	,from_date DATE NOT NULL
	,to_date DATE NOT NULL
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	,dept_no VARCHAR(255) NOT NULL
	,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	,from_date DATE NOT NULL
	,to_date DATE NOT NULL	
);


CREATE TABLE salaries(
	emp_no INT NOT NULL
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	,salary INT NOT NULL
	,from_date DATE NOT NULL
	,to_date DATE NOT NULL
);

CREATE TABLE titles(
	emp_no INT NOT NULL
	,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	,title VARCHAR(255) NOT NULL
	,from_date DATE NOT NULL
	,to_date DATE NOT NULL
);
	


