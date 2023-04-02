USE MyDB;

SELECT *
FROM employee
WHERE id IN (SELECT employee_id
             FROM salary
             WHERE salary > 10000);