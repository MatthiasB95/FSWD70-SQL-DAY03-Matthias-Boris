/* task 1 */
SELECT COUNT(*)
FROM employees;

/* task 2 */
SELECT COUNT(*) first_name from employees WHERE first_name = "Mark";

/* task 3 */
SELECT COUNT(*) first_name from employees WHERE first_name = "Eric" AND last_name LIKE "A%";

/* task 4 */
SELECT emp_no, birth_date, first_name, last_name, gender, hire_date 
FROM employees
WHERE YEAR(hire_date) LIKE '1985%';

SELECT COUNT(*) first_name from employees WHERE YEAR(hire_date) LIKE '1985%';

/* task 5 */

SELECT emp_no, birth_date, first_name, last_name, gender, hire_date 
FROM employees
WHERE YEAR(hire_date) BETWEEN '1990%' AND '1997%';

SELECT COUNT(*) first_name from employees 
WHERE YEAR(hire_date) 
BETWEEN '1990%' AND '1997%';

/* task 6 */
SELECT first_name, last_name, salaries.salary FROM employees 
INNER JOIN salaries on employees.emp_no = salaries.emp_no
WHERE salary > 70000 GROUP BY first_name;

SELECT COUNT(employees.emp_no) as number FROM employees 
INNER JOIN salaries on employees.emp_no = salaries.emp_no 
WHERE salary > 70000;	

 /* task 7 */

SELECT COUNT(dept_emp.emp_no) 
FROM dept_emp
WHERE dept_emp.dept_no = "d008" AND YEAR(from_date) LIKE "1992%"

SELECT first_name, last_name, employees.emp_no, dept_emp.dept_no 
FROM employees 
INNER JOIN dept_emp on dept_emp.emp_no = employees.emp_no
WHERE dept_emp.dept_no = "d008" AND YEAR(from_date) LIKE "1992%"

/* task 8 */










