/*************************************************
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
*/

SELECT emp.emp_no AS Employee_Number
	,emp.last_name
	,emp.first_name
	,emp.sex
	,s.salary 
FROM employees emp
	JOIN salaries s on emp.emp_no = s.emp_no;


/*************************************************
2. List first name, last name, and hire date for employees who were hired in 1986.
*/

SELECT emp.emp_no AS employee_number
	,emp.last_name
	,emp.first_name
	,emp.hire_date
FROM employees emp
WHERE DATE_PART('year',hire_date) = 1986;

/*************************************************
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

/*************************************************
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

/*************************************************
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
*/

SELECT emp.first_name as Employee_First_Name
		,emp.last_name as Employee_Last_Name
		,emp.sex
FROM employees emp
WHERE First_Name = 'Hercules'
	and Last_Name like 'B%'

/*************************************************
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

/*************************************************
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
*/

SELECT emp.emp_no as Employee_Number
		,emp.last_name as Employee_Last_Name
		,emp.first_name as Employee_First_Name
		,d.dept_name as Department_Name
FROM employees emp
	JOIN dept_emp de ON emp.emp_no = de.emp_no
	JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development')

/*************************************************
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
*/

SELECT emp.last_name as Employee_Last_Name
		,count(1) as Count_of_Last_Name
FROM employees emp
GROUP BY emp.last_name
ORDER BY 2 DESC