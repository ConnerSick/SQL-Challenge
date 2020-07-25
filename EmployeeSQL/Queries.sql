-- 1. Employee details and salary
select 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
from employees
left join salaries on (employees.emp_no = salaries.emp_no)
order by (employees.emp_no)

-- 2. Employees hired in 1986
select
	first_name,
	last_name,
	hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'

-- 3. Department Manager details
select
manager.dept_no,
departments.dept_name,
manager.emp_no,
employees.last_name,
employees.first_name
from manager
inner join departments on (manager.dept_no = departments.dept_no)
inner join employees on (manager.emp_no = employees.emp_no)

-- 4. Department info
select
employees.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
from employees
inner join emp on (employees.emp_no = emp.emp_no)
inner join departments on (emp.dept_no = departments.dept_no)

-- 5. Employees named Hercules
select
first_name,
last_name,
sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

-- 6. Sales Department
select
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees
inner join emp on (employees.emp_no = emp.emp_no)
inner join departments on (emp.dept_no = departments.dept_no)
where dept_name = 'Sales'

-- 7. Sales and Development Departments
select
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from employees
inner join emp on (employees.emp_no = emp.emp_no)
inner join departments on (emp.dept_no = departments.dept_no)
where dept_name = 'Sales' or dept_name = 'Development'

-- 8. Frequency of Employee Last Names
select
last_name,
count(last_name)
from employees
group by last_name
order by count(last_name) desc