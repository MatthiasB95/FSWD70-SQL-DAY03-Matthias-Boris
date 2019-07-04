
-- Example 1
SELECT COUNT(*) from employees
-- Example 1

--Example 2
SELECT COUNT(*)first_name from employees where first_name = 'Mark'
--Example 2

--Example 3
SELECT COUNT(*)first_name from employees where first_name = 'Eric' and last_name like 'A%'
--Example 3

--Example 4
SELECT last_name, first_name , hire_date  from employees where YEAR(hire_date) like '1985%'

SELECT count(*)last_name  from employees where YEAR(hire_date) like '1985%'
--Example 4

--Example 5
SELECT last_name, first_name , hire_date  from employees where YEAR(hire_date) between '1990%' and '1997%'

SELECT count(*)last_name from employees where YEAR(hire_date) between '1990%' and '1997%'
--Example 5

--Example 6
select employees.first_name, employees.last_name , salaries.salary  
from employees 
inner join salaries on  employees.emp_no = salaries.emp_no 
where salary > 70000
group by first_name

SELECT COUNT(employees.emp_no) as number
FROM employees
INNER JOIN salaries on employees.emp_no = salaries.emp_no
WHERE salaries.salary > 70000
--Example 6

--Example 7
select count(dept_emp.emp_no) from dept_emp
where dept_no = 'd008' and YEAR(from_date) like '1992%' 

select first_name, last_name , dept_no from dept_emp
inner join employees on employees.emp_no = dept_emp.emp_no
where dept_no = 'd008' and YEAR(from_date) like '1992%' 
--Example 7 

--Example 8
select COUNT(dept_emp.emp_no) from dept_emp
inner join employees on employees.emp_no = dept_emp.emp_no
inner join salaries on salaries.emp_no = dept_emp.emp_no
where dept_no = 'd002' and YEAR(employees.hire_date) like '1985%'  and salaries.salary > 75000

select first_name , last_name from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join salaries on salaries.emp_no = employees.emp_no
where dept_no = 'd002' and YEAR(employees.hire_date) like '1985%'  and salaries.salary > 75000
group by first_name
--Example 8

--Example 9
select first_name , last_name , birth_date, gender, hire_date , title, salary from employees 
inner join dept_emp on employees.emp_no = dept_emp.emp_no 
inner join salaries on salaries.emp_no = employees.emp_no 
inner join titles on titles.emp_no = employees.emp_no 
where YEAR(salaries.to_date) > '2019%' group by first_name	
--Example 9

--Example 10
select first_name , last_name , birth_date, gender, hire_date , title, dept_name, salary from dept_manager 
inner join departments on departments.dept_no = dept_manager.dept_no 
inner join salaries on salaries.emp_no = dept_manager.emp_no
inner join titles on titles.emp_no = dept_manager.emp_no 
inner join employees on employees.emp_no = dept_manager.emp_no 
where YEAR(salaries.to_date) > '2019%' group by first_name
--Example 10

--B-B-B-BONUS EXAMPLE 
select * from dept_manager 
inner join departments on departments.dept_no = dept_manager.dept_no 
inner join salaries on salaries.emp_no = dept_manager.emp_no
inner join titles on titles.emp_no = dept_manager.emp_no 
inner join employees on employees.emp_no = dept_manager.emp_no 
inner join dept_emp on dept_emp.emp_no = dept_manager.emp_no
group by first_name
--B-B-B-BONUS EXAMPLE








