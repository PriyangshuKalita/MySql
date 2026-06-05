-- Windows Functions

SELECT dem.first_name, dem.last_name, gender, AVG(salary) avg_salary
FROM employee_demographics dem							-- normal groupby function
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY dem.first_name, dem.last_name, gender;


SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem							-- window function gives all rows
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;


SELECT dem.first_name, dem.last_name, gender,
SUM(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem							
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_total
FROM employee_demographics dem							
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
    
SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER()									-- it gives the row number but not repeated
FROM employee_demographics dem							
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
        
SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender) 						-- now it can repeat base on gender			
FROM employee_demographics dem							
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
    
SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) dense_rank_num								
FROM employee_demographics dem							
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
    
    