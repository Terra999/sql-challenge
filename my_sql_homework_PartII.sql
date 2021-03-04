-- Q1. List the following details of each employee: employee number, last name, firs name, sex, and salary.

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from salaries as s
inner join employees as e on
e.emp_no=s.emp_no;

-- Q2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between '01/01/86' and '12/31/86'; 

-- Q3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, 
-- last name, first name.
-- Using subqueries [Subqueries didn't work. Keeping here just in case I need something like this later on.]

-- select dept_name
-- from departments
-- where dept_no in
-- 	(
-- 	select dept_no
-- 	from dept_manager
-- 	where emp_no in
-- 		(
-- 		select emp_no
-- 		from employees
-- 		where emp_title_id in
-- 			(
-- 			select title_id
-- 			from titles
-- 			where title = 'Manager'
-- 			)
-- 		 )
-- 	);

-- Trying with joins and create view.
-- create view department_managers as	

select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name   
from departments as d
	join dept_manager as m
	on (d.dept_no=m.dept_no)
		join employees as e
		on (m.emp_no=e.emp_no)
			join titles as t
			on (e.emp_title_id=t.title_id);
		
-- Q4. List the dpeartment of each employee with the following information:
-- employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, p.dept_name   
from departments as p
	join dept_emp as d 
	on (p.dept_no=d.dept_no)
		join employees as e
		on (d.emp_no=e.emp_no);
			
-- Q5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B".

select first_name, last_name, sex from employees
where first_name = 'Hercules'
and last_name like 'B%';

-- Q6. List all employees in the Sales department, including their employee number, last name, first name and department name.
-- Missing department name
-- select emp_no, last_name, first_name
-- from employees
-- where emp_no in
-- 	(
-- 	select emp_no
-- 	from dept_emp
-- 	where dept_no in
-- 		(
-- 		select dept_no
-- 		from departments
-- 		where dept_name = 'Sales'
-- 		)
-- 	);

select e.emp_no, e.last_name, e.first_name, p.dept_name   
from departments as p
	join dept_emp as d 
	on (p.dept_no=d.dept_no)
		join employees as e
		on (d.emp_no=e.emp_no)
		where dept_name = 'Sales';
		
-- Q7. List all employees in the Sales and Development departments, include their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, p.dept_name   
from departments as p
	join dept_emp as d 
	on (p.dept_no=d.dept_no)
		join employees as e
		on (d.emp_no=e.emp_no)
		where dept_name in ('Sales', 'Development');
		