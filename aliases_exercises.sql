use employees;


# Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.

SELECT CONCAT(last_name, ' ', first_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 10;

# Add the date of birth for each employee as 'DOB' to the query.
SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name, birth_date AS 'DOB'
FROM employees
LIMIT 10;


# SELECT birth_date, CONCAT(first_name, ' ', last_name) AS full_name, gender
# FROM employees
# WHERE hire_date='1985-01-01'
#   AND full_name='Arie Staelin';
