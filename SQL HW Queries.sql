-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
-- SELECT
-- 	e.emp_no,
-- 	e.first_name,
-- 	e.last_name,
-- 	e.gender,
-- 	s.salary
-- FROM employees e
-- JOIN salaries s
-- ON e.emp_no = s.emp_no
-- GROUP BY 1, 2, 3, 4, 5
-- ORDER BY 1

-- 2. List employees who were hired in 1986.
-- SELECT
-- 	e.emp_no,
-- 	e.first_name,
-- 	e.last_name,
-- 	e.hire_date
-- FROM employees e
-- WHERE hire_date LIKE '1986%'
-- GROUP BY 1, 2, 3, 4
-- ORDER BY 4 DESC

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, 
-- first name, and start and end employment dates.
-- SELECT 
-- 	dm.dept_no,
-- 	d.dept_name,
-- 	e.emp_no,
-- 	e.last_name,
-- 	e.first_name,
-- 	e.hire_date,
-- 	de.to_date
-- FROM department_manager dm
-- JOIN departments d
-- ON dm.dept_no = d.dept_no
-- JOIN employees e
-- ON dm.emp_no = e.emp_no
-- JOIN dept_emp de
-- ON de.emp_no = de.emp_no;

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
-- SELECT
-- 	e.emp_no,
-- 	e.last_name,
-- 	e.first_name,
-- 	d.dept_name
-- FROM employees e
-- JOIN department_manager dm
-- ON e.emp_no = dm.emp_no
-- LEFT JOIN departments d
-- ON dm.dept_no = d.dept_no

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
-- SELECT *
-- FROM employees e
-- WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, 
-- first name, and department name.
-- SELECT 
-- 	e.emp_no,
-- 	e.last_name,
-- 	e.first_name,
-- 	d.dept_name
-- FROM employees e
-- JOIN dept_emp de
-- ON e.emp_no = de.emp_no
-- JOIN departments d
-- ON de.dept_no = d.dept_no
-- WHERE d.dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.

-- SELECT 
-- 	e.emp_no,
-- 	e.last_name,
-- 	e.first_name,
-- 	d.dept_name
-- FROM employees e
-- JOIN dept_emp de
-- ON e.emp_no = de.emp_no
-- JOIN departments d
-- ON de.dept_no = d.dept_no
-- WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
-- ORDER BY 1

-- 8. In descending order, list the frequency count of employee last names, i.e., 
-- how many employees share each last name.
-- SELECT 
-- 	e.last_name,
-- 	COUNT(*)
-- FROM employees e
-- GROUP BY 1
-- ORDER BY 2 DESC


















