DROP TABLE IF EXISTS Departments CASCADE;
DROP TABLE IF EXISTS Titles CASCADE;
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Salaries CASCADE;
DROP TABLE IF EXISTS Dept_Emp CASCADE;
DROP TABLE IF EXISTS Dept_Manager CASCADE;

--'Departments' table schema
CREATE TABLE Departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

--'Titles' table schema
CREATE TABLE Titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

--'Employees' table schema
CREATE TABLE Employees (
	emp_no NUMERIC PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex CHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

--'Salaries' table schema
CREATE TABLE Salaries (
	emp_no NUMERIC,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

--'Dept_Emp' junction table schema
CREATE TABLE Dept_Emp (
	emp_no NUMERIC,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

--'Dept_Manager' table schema
CREATE TABLE Dept_Manager (
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	emp_no NUMERIC,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);
