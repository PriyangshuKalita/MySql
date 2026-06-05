# WHERE Clause

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie';


SELECT * 
FROM employee_salary
WHERE salary >= 50000;

SELECT * 
FROM employee_demographics
WHERE gender != 'male';



-- AND OR NOT -- Logical Operator

 SELECT * 
FROM employee_demographics
WHERE (First_name = 'Leslie' AND age = 44) OR age > 50;

-- Like Statement
-- % and _

 SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a%'; --  name staring with 'a'

 SELECT * 
FROM employee_demographics
WHERE first_name LIKE '%a%'; -- name which contain 'a'

 SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a__'; -- name starts with a and end with only two letter

 SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a___';     -- name starts with a and end with only three letter 



 SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a___%';     -- name starts with a and end with many letter


 SELECT * 
FROM employee_demographics
WHERE birth_date LIKE '1989%';