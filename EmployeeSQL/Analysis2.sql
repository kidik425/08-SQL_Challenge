/*
2. List first name, last name, and hire date for employees who were hired in 1986.
*/

SELECT emp.emp_no AS employee_number
	,emp.last_name
	,emp.first_name
	,emp.hire_date
FROM employees emp
WHERE DATE_PART('year',hire_date) = 1986