--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT  emp.emp_nu,
        emp.last_name,
        emp.first_name,
        emp.gender,
        sal.salary
FROM employees as emp
LEFT JOIN salaries as sal
ON (emp.emp_nu= sal.emp_nu)
ORDER BY emp.emp_nu;


--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT  dm.dept_nu,
        d.dept_name,
        dm.emp_nu,
        emp.last_name,
        emp.first_name
FROM dept_manager as dm
INNER JOIN departments as d
ON (dm.dept_nu= d.dept_nu)
INNER JOIN employees as emp
ON (dm.emp_nu= emp.emp_nu);


--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT  emp.emp_nu,
        emp.last_name,
        emp.first_name,
        d.dept_name
FROM employees AS emp
INNER JOIN dept_emp AS de
ON (emp.emp_nu= de.emp_nu)
INNER JOIN departments AS d
ON (de.dept_nu= d.dept_nu)
ORDER BY emp.emp_nu;



--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM employees
WHERE first_name= 'Hercules'
AND last_name LIKE 'B%';


--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT  emp.emp_nu,
        emp.last_name,
        emp.first_name,
        d.dept_name
FROM employees AS emp
INNER JOIN dept_emp AS de
ON (emp.emp_nu= de.emp_nu)
INNER JOIN departments AS d
ON (de.dept_nu= d.dept_nu)
WHERE d.dept_name= 'Sales'
ORDER BY emp.emp_nu;


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT  emp.emp_nu,
        emp.last_name,
        emp.first_name,
        d.dept_name
FROM employees AS emp
INNER JOIN dept_emp AS de
ON (emp.emp_nu= de.emp_nu)
INNER JOIN departments AS d
ON (de.dept_nu= d.dept_nu)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY emp.emp_nu;


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;