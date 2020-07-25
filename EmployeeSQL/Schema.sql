create table titles (
title_id varchar,
title varchar,
primary key (title_id))

create table departments (
dept_no varchar,
dept_name varchar,
primary key (dept_no))

create table employees (
emp_no int,
emp_title_id varchar,
birth_data date,
first_name varchar,
last_name varchar,
sex varchar,
hire_date date,
primary key (emp_no),
foreign key (emp_title_id) references titles(title_id))

create table manager (
dept_no varchar,
emp_no int,
foreign key (emp_no) references employees (emp_no),
foreign key (dept_no) references departments (dept_no),
primary key (dept_no, emp_no))

create table salaries (
emp_no int,
salary int,
foreign key (emp_no) references employees (emp_no),
primary key (emp_no))

create table emp (
emp_no int,
dept_no varchar,
foreign key (emp_no) references employees (emp_no),
foreign key (dept_no) references departments (dept_no),
primary key (emp_no, dept_no))
