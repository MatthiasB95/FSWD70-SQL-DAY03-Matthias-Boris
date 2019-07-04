/* task 1 */
	/* How many employees*/
		SELECT COUNT(*)
		FROM employees;

/* task 2 */
	/*How many Marks*/
		SELECT COUNT(*) first_name from employees WHERE first_name = "Mark";

/* task 3 */
	/*How many Erics where last name starts with A*/
		SELECT COUNT(*) first_name from employees WHERE first_name = "Eric" AND last_name LIKE "A%";

/* task 4 */
	/*Who are the employees*/
		SELECT emp_no, birth_date, first_name, last_name, gender, hire_date 
		FROM employees
		WHERE YEAR(hire_date) LIKE '1985%';

	/*How many are there*/
		SELECT COUNT(*) first_name from employees WHERE YEAR(hire_date) LIKE '1985%';

/* task 5 */
	/*Who are they*/
		SELECT emp_no, birth_date, first_name, last_name, gender, hire_date 
		FROM employees
		WHERE YEAR(hire_date) BETWEEN '1990%' AND '1997%';


	/*How many are there*/
		SELECT COUNT(*) first_name from employees 
		WHERE YEAR(hire_date) 
		BETWEEN '1990%' AND '1997%';

/* task 6 */
	/*Who*/
		SELECT first_name, last_name, salaries.salary FROM employees 
		INNER JOIN salaries on employees.emp_no = salaries.emp_no
		WHERE salary > 70000 GROUP BY first_name;

	/*How many*/
		SELECT COUNT(employees.emp_no) as number FROM employees 
		INNER JOIN salaries on employees.emp_no = salaries.emp_no 
		WHERE salary > 70000;	

/* task 7 */

 	/*How many*/
		SELECT COUNT(dept_emp.emp_no) 
		FROM dept_emp
		WHERE dept_emp.dept_no = "d008" AND YEAR(from_date) LIKE "1992%"

	/*Who are they*/
		SELECT first_name, last_name, employees.emp_no, dept_emp.dept_no 
		FROM employees 
		INNER JOIN dept_emp on dept_emp.emp_no = employees.emp_no
		WHERE dept_emp.dept_no = "d008" AND YEAR(from_date) LIKE "1992%"

/* task 8 */
	/*How many in Finance department with salay over 75000*/
		SELECT COUNT(employees.emp_no) 
		FROM employees
		INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
		INNER JOIN salaries ON employees.emp_no = salaries.emp_no
		WHERE dept_emp.dept_no = "d002" AND YEAR(hire_date) LIKE "1985%"
		 AND salaries.salary > 75000

	/*Who are they*/
		SELECT employees.emp_no, employees.first_name, employees.last_name
		FROM employees
		INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
		INNER JOIN salaries ON salaries.emp_no = employees.emp_no
		WHERE dept_emp.dept_no = "d002" AND YEAR(hire_date) LIKE "1985%"
		AND salaries.salary > 75000
        GROUP BY employees.first_name

/* task 9 */
	SELECT employees.first_name, employees.last_name, employees.gender, employees.hire_date, employees.birth_date, titles.title, salaries.salary
	FROM employees
	INNER JOIN titles ON titles.emp_no = employees.emp_no
	INNER JOIN salaries ON salaries.emp_no = employees.emp_no
	INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
	WHERE YEAR (dept_emp.to_date) > "2019%"
	GROUP BY first_name
/* task 10 */
	SELECT employees.first_name, employees.last_name, employees.birth_date, employees.gender, employees.hire_date, titles.title, departments.dept_name, salaries.salary
	FROM dept_manager
	INNER JOIN titles ON titles.emp_no = dept_manager.emp_no
	INNER JOIN employees ON employees.emp_no = dept_manager.emp_no
	INNER JOIN departments ON departments.dept_no = dept_manager.dept_no
	INNER JOIN salaries ON salaries.emp_no = dept_manager.emp_no
	WHERE YEAR (salaries.to_date) > "2019%"
	GROUP BY first_name


/* bonus query */







