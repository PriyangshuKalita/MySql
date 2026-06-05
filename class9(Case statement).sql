-- Case Statement

SELECT first_name,
last_name,
age,
CASE 
	WHEN age <= 30 THEN 'Young' 
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 50 THEN 'Senior citizen'
END AS age_bracket
FROM employee_demographics;


-- Pay increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END AS Bonus
FROM employee_salary;


-- If we wnad the bonus in 'new_salary'



SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END 
+
CASE
	WHEN dept_id = 6 THEN salary * .10
    ELSE 0
END AS new_salary
FROM employee_salary;


-- if i want three different column

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS new_salary,

CASE
	WHEN dept_id = 6 THEN salary * .10
    
END AS Bonus,

CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END
+
CASE
	WHEN dept_id = 6 THEN salary * .10
    ELSE 0
END AS total_salary

FROM employee_salary;
