/*
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
*/

SELECT emp.emp_no as Employee_Number
		,emp.last_name as Employee_Last_Name
		,emp.first_name as Employee_First_Name
		,d.dept_name as Department_Name
FROM employees emp
	JOIN dept_emp de ON emp.emp_no = de.emp_no
	JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'