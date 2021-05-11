/*
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
*/

SELECT dm.dept_no as Department_Number
		,d.dept_name as Department_Name
		,dm.emp_no as Manager_Emp_Number
		,emp.last_name as Manager_Last_Name
		,emp.first_name as Manager_First_Name
FROM dept_manager dm
	JOIN employees emp on emp.emp_no = dm.emp_no
	JOIN departments d on d.dept_no = dm.dept_no