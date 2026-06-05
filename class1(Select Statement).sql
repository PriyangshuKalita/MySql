# To select whole table (*) 

SELECT *
FROM parks_and_recreation.employee_demographics;

# To select differect column

SELECT first_name,
last_name,
age,
age + 10
FROM parks_and_recreation.employee_demographics;


#PEMDAS (Parenthesis, Exponent, Multiplication, Division, Addition, Subtraction)

SELECT first_name,
last_name,
age,
(age + 10) * 10
FROM parks_and_recreation.employee_demographics;


# Distinct

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;