/*
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
*/

SELECT emp.last_name as Employee_Last_Name
		,count(1) as Count_of_Last_Name
FROM employees emp
GROUP BY emp.last_name
ORDER BY 2 DESC