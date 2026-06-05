-- Strings Function

SELECT LENGTH('SKY');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY first_name;

SELECT UPPER('sky');    -- converts into block letter
SELECT LOWER('sky');	 -- converts into small letter


SELECT  UPPER(first_name)
FROM employee_demographics
ORDER BY first_name;

SELECT TRIM('			sky			');
SELECT LTRIM('			sky			');
SELECT RTRIM('			sky			');


SELECT first_name,
left(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;


SELECT first_name, REPLACE(first_name, 'e', 'a')
FROM employee_demographics;

SELECT LOCATE('s', 'leslie');

SELECT first_name, LOCATE('an',first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, ' ' , last_name) AS full_name		-- CONCAT -> combine the firstname and lastname
FROM employee_demographics;

