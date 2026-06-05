-- Having Vs Where

SELECT gender, avg(age)
FROM employee_demographics
GROUP BY gender
having avg(age) > 30;


SELECT occupation, avg(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
having avg(salary) > 50000
