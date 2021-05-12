/*
DROP Tables if exists
*/
DROP TABLE IF EXISTS Dept_Manager;
DROP TABLE IF EXISTS Dept_Emp;
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Titles;
DROP TABLE IF EXISTS Departments;

/*
Create Tables
*/
CREATE TABLE Departments (
	Dept_No VARCHAR (4) PRIMARY KEY
	,Dept_Name VARCHAR(30) NOT NULL
);


CREATE TABLE Titles (
	Title_ID VARCHAR(30) PRIMARY KEY
	,Title VARCHAR(30) NOT NULL
);

CREATE TABLE Employees (
	Emp_No INT PRIMARY KEY
	,Emp_Title_ID VARCHAR(4)
	,Birth_Date Date NOT NULL
	,First_Name VARCHAR(30)
	,Last_Name VARCHAR(30) NOT NULL
	,Sex VARCHAR(1)
	,Hire_Date Date NOT NULL
	,FOREIGN KEY (Emp_Title_ID)
      REFERENCES Titles (Title_ID)
);


CREATE TABLE Dept_Emp (
	Emp_No INT 
	,Dept_No VARCHAR(4)
  	,FOREIGN KEY (Emp_No)
      REFERENCES Employees (Emp_No)
  	,FOREIGN KEY (Dept_No)
      REFERENCES Departments (Dept_No)
);

CREATE TABLE Salaries (
	Emp_No INT
	,Salary INT
  	,FOREIGN KEY (Emp_No)
      REFERENCES Employees (Emp_No)
);

CREATE TABLE Dept_Manager (
	Dept_No VARCHAR(4)
	,Emp_No INT
  	,FOREIGN KEY (Dept_No)
      REFERENCES Departments (Dept_No)
  	,FOREIGN KEY (Emp_No)
      REFERENCES Employees (Emp_No)
);


