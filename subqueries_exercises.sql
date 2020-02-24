USE employees;

# SELECT first_name, last_name, hire_date
# FROM employees
# WHERE hire_date IN (
#     SELECT hire_date
#     FROM employees
#     WHERE employees.employees.emp_no = 101010
# )
# LIMIT 69;



# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
#
# SELECT DISTINCT title
# FROM titles
# WHERE emp_no IN (
#     SELECT emp_no
#     FROM employees
#     WHERE employees.first_name= 'Aamod'
# );
# SELECT DISTINCT title
# FROM titles
# WHERE emp_no IN (
#     SELECT emp_no FROM employees
#     WHERE first_name = 'Aamod'
# );
# SELECT title AS 'Titles'
# FROM titles
# WHERE emp_no IN (
#     SELECT emp_no
#     FROM employees
#     WHERE first_name = 'Aamod'
# );

# SELECT first_name, last_name
# FROM employees
# WHERE emp_no IN (
#     SELECT employees.dept_manager.emp_no
#     FROM dept_manager
#     WHERE to_date > NOW() AND gender = 'F'
# );
# # Find all the department names that currently have female managers.
# #
# # Expected Output
# # +-----------------+
# # | dept_name       |
# # +-----------------+
# # | Development     |
# # | Finance         |
# # | Human Resources |
# # | Research        |
# # +-----------------+
# SELECT dept_name from departments
# WHERE dept_no IN (
#     SELECT dept_no
#     FROM dept_manager
#     WHERE emp_no IN (
#         SELECT emp_no from employees
#         where gender = 'F' and to_date > NOW()
#     )
# );
# #     Find the first and last name of the employee with the highest salary.
# #
# #     Expected Output
# #     +------------+-----------+
# #     | first_name | last_name |
# #     +------------+-----------+
# #     | Tokuyasu   | Pesch     |
# #     +------------+-----------+
# SELECT first_name, last_name
# FROM employees
# WHERE emp_no = (
#     SELECT emp_no
#     FROM salaries
#     ORDER BY salary DESC limit 1
# );