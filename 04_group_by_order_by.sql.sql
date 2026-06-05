-- Group By

SELECT gender, AVG(age), max(age), min(age), count(age)
FROM employee_demographics
group by gender;

SELECT birth_date
FROM employee_demographics
group by birth_date ;


--  Order By

SELECT *
FROM employee_demographics
ORDER BY first_name ASC;    -- Ascending order

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;   -- Descending order

SELECT *
FROM employee_demographics
ORDER BY gender, age;      -- both in asc order

 SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;  -- gender asc order and age desc order

SELECT *
FROM employee_demographics
ORDER BY age, gender;  -- age will be in asc order but gender will not

SELECT *
FROM employee_demographics
ORDER BY gender, age;  

