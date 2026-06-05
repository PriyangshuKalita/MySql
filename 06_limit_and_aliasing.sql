-- Limit and Aliasing

SELECT *
FROM employee_demographics
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 1, 1;

SELECT *
FROM employee_demographics
ORDER BY age DESC
 LIMIT 2, 3;      --  2 mean afer 2, 3 names will be print
 
 
 -- Aliasing
 
 SELECT gender, avg(age) AS avg_age    -- we can change the column name usinf 'AS'
 FROM employee_demographics
 GROUP BY gender
 HAVING avg(age) >30
 ;
 
  SELECT gender, avg(age) avg_age    -- we can change the column name whithout using 'AS'
 FROM employee_demographics
 GROUP BY gender
 HAVING avg_age > 30
 ;