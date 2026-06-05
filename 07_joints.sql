-- Joint

	-- Inner Joint
    
    SELECT *
    FROM employee_demographics
    INNER JOIN employee_salary
    ON employee_demographics.employee_id = employee_salary.employee_id;
    
     SELECT *
    FROM employee_demographics AS dem		-- return same output just we change name using 'AS'
    INNER JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id;
    
    SELECT dem.employee_id, age, occupation
    FROM employee_demographics AS dem		
    INNER JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id;
    
    
    -- Outer Join
    
    SELECT *
    FROM employee_demographics AS dem		 -- Left join (Returns all rows from the left table and matching rows from the right table)
    LEFT JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id;
        

	 SELECT *
    FROM employee_demographics AS dem			-- Right Join (Returns all rows from the right table and matching rows from the left table)
    RIGHT JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id;
        
        
	-- Self Join
    
    select * 
    FROM employee_salary emp1
    JOIN employee_salary emp2
    ON emp1.employee_id + 1 = emp2.employee_id;
    
   
    select emp1.employee_id,
		emp1.first_name,
        emp1.last_name,
        emp2.employee_id,
        emp2.first_name,
        emp2.last_name
    FROM employee_salary emp1
    JOIN employee_salary emp2
    ON emp1.employee_id + 1 = emp2.employee_id;
    
    
    -- Joining multiple table together
    
    SELECT *
    FROM employee_demographics AS dem			
    INNER JOIN employee_salary AS sal
		ON dem.employee_id = sal.employee_id
	INNER JOIN parks_departments pd
		ON sal.dept_id = pd.department_id;
    