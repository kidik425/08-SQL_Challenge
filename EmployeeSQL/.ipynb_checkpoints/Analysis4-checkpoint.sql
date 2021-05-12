/*
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
*/

SELECT de.emp_no as Employy_Emp_Number
		,emp.last_name as Employee_Last_Name
		,emp.first_name as Employee_First_Name
		,de.dept_no as Department_Number  --I added this for fun... 
		,d.dept_name as Department_Name
FROM dept_emp de
	JOIN employees emp on emp.emp_no = de.emp_no
	JOIN departments d on d.dept_no = de.dept_no