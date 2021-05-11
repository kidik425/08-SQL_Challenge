/*
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
*/

SELECT emp.first_name as Employee_First_Name
		,emp.last_name as Employee_Last_Name
		,emp.sex
FROM employees emp
WHERE First_Name = 'Hercules'
	and Last_Name like 'B%'