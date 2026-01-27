-- EXERCISE 1: STRING PATTERNS
-- 1. Retrieve all employees whose address is in Elgin,IL.
SELECT * FROM EMPLOYEES WHERE ADDRESS LIKE '%Elgin,IL'
;
-- 2. Retrieve all employees who were born during the 1970’s
SELECT * FROM EMPLOYEES WHERE B_DATE LIKE '197%'
;
-- Retrieve all employees in department 5 whose salary is between 60000 and 70000.
SELECT * FROM EMPLOYEES WHERE DEP_ID=5 AND SALARY BETWEEN 60000 AND 70000
;

-- EXERCISE 2: SORTING
-- 1. Retrieve a list of employees ordered by department ID.
SELECT * FROM EMPLOYEES ORDER BY DEP_ID
;
-- 2. Retrieve a list of employees ordered in descending order by department ID and 
-- within each department ordered alphabetically in descending order by last name.
SELECT * FROM EMPLOYEES ORDER BY DEP_ID DESC, L_NAME DESC
;
-- 3. Use department name instead of department ID. Retrieve a list of employees ordered by 
-- department name, and within each department ordered alphabetically in descending order by last name.
SELECT E.F_NAME, E.L_NAME, D.DEP_NAME
FROM EMPLOYEES AS E, DEPARTMENTS AS D
ORDER BY D.DEP_NAME, E.L_NAME DESC
;

-- EXERCISE 3: GROUPING
-- 1. For each department ID retrieve the number of employees in the department.
SELECT DEP_ID, COUNT(*) AS "NUM"
FROM EMPLOYEES
GROUP BY DEP_ID
;
-- 2. For each department retrieve the number of employees in the department, 
-- and the average employee salary in the department
-- order the result set by Average Salary
-- limit the result to departments with fewer than 4 employees
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING COUNT(*)<4
ORDER BY AVG_SALARY
;
-- 3. 