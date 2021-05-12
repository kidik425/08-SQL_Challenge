/*
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
*/

SELECT emp.emp_no AS Employee_Number
	,emp.last_name
	,emp.first_name
	,emp.sex
	,s.salary 
FROM employees emp
	JOIN salaries s on emp.emp_no = s.emp_no