use employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

# Select departments.dept_name as 'Department Name', concat(first_name, ' ', last_name) AS 'Department Manager'
# FROM employees
#          Join dept_manager
#               on employees.emp_no = dept_manager.emp_no
#          join departments
#               on dept_manager.dept_no = departments.dept_no
# WHERE dept_manager.to_date = '9999-01-01'
# order by  dept_name ASC;

# Select dept_name as 'Department Name', concat(first_name, ' ', last_name) AS 'Manager Name'
# # FROM employees
# #          Join dept_manager
# #               on employees.emp_no = dept_manager.emp_no
# #          join departments
# #               on dept_manager.dept_no = departments.dept_no
# # WHERE dept_manager.to_date = '9999-01-01' AND gender = 'F'
# # order by  dept_name ASC;
# Select dept_name as 'Department Name', concat(first_name, ' ', last_name) AS 'Employee Name'
# FROM employees
#          Join dept_manager
#               on employees.emp_no = dept_manager.emp_no
#          join departments
#               on dept_manager.dept_no = departments.dept_no
# WHERE departments.dept_name = 'customer service'
# order by  dept_name ASC;

# SELECT title AS 'Title', count(*) AS 'Count'
# FROM titles
#          JOIN dept_emp
#               on titles.emp_no = dept_emp.emp_no
#          JOIN departments
#               on dept_emp.dept_no = departments.dept_no
# WHERE dept_name = 'Customer Service' AND dept_emp.to_date = '9999-01-01' AND titles.to_date = '9999-01-01'
# GROUP BY title;

# Find the current salary of all current managers.

Select departments.dept_name as 'Department Name', concat(first_name, ' ', last_name) AS 'name', salaries.salary AS 'Salary'
FROM employees
         Join dept_manager
              on employees.emp_no = dept_manager.emp_no
         join departments
              on dept_manager.dept_no = departments.dept_no
        join salaries
            on dept_manager.emp_no = salaries.emp_no
WHERE dept_manager.to_date = '9999-01-01' and salaries.to_date = '9999-01-01'
order by  dept_name ASC;

SELECT concat(employees.first_name,' ',employees.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', concat(managers.first_name, ' ', managers.last_name) AS 'Manager Name'
FROM employees
         JOIN dept_emp AS de
              on de.emp_no = employees.emp_no
         JOIN departments AS d
              on de.dept_no = d.dept_no
         JOIN dept_manager AS m
              on m.dept_no = d.dept_no
         JOIN employees AS managers
              ON m.emp_no = managers.emp_no
WHERE de.to_date > NOW() AND m.to_date > NOW();