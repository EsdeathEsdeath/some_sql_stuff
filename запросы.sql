SELECT * FROM employees WHERE manager_id = (SELECT manager_id FROM employees WHERE last_name  LIKE '...' LIMIT 1);

SELECT department_name FROM departments INNER JOIN employees ON employees.department_id = departments.department_id AND (SELECT avg(salary) FROM employees WHERE employees.department_id =  departments.department_id ) > 1000 GROUP BY department_name;

SELECT last_name, first_name FROM employees INNER JOIN departments ON employees.department_id = departments.department_id INNER JOIN locations ON departments.location_id = locations.location_id AND country_code = 'RU'