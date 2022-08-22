EXP: 4
SELECT *FROM EMP;
--1. Calculate the number of employees who are not getting any commission.
Ans
SELECT COUNT(*) FROM EMP WHERE COMM IS NULL;

--2. Calculate the number of employees who are getting commission.
Ans
SELECT COUNT(*) FROM EMP WHERE COMM IS NOT NULL;

--3. List the total number of employees and the average salaries of the different departments.
Ans
SELECT DEPTNO, COUNT(DEPTNO), AVG(SAL) FROM EMP GROUP BY DEPTNO ORDER BY DEPTNO;

--4. List the average salaries for each different job.
Ans
SELECT JOB, COUNT(JOB), AVG(SAL) FROM EMP GROUP BY JOB ORDER BY JOB;

--5. Display the minimum, maximum and average salaries for each job groups.
Ans
SELECT JOB, COUNT(JOB), AVG(SAL), MIN (SAL), MAX(SAL) FROM EMP GROUP BY JOB ORDER BY JOB;

--6. Find the details of the employees in ascending order of department number, and within each department in descending order of salary.
Ans
SELECT * FROM EMP ORDER BY DEPTNO, SAL DESC;

--7. Display the name, deptno and salary of each employees in order salary and deptno.
Ans
SELECT ENAME, DEPTNO, SAL FROM EMP ORDER BY SAL, DEPTNO;

--8. List the department number and the total salary payable in each department
Ans
SELECT DEPTNO, SUM(SAL) FROM EMP GROUP BY DEPTNO;

--9. List the jobs and number of employees in each job. the result should be in descending order of employees.
Ans
SELECT JOB, COUNT(JOB) AS NO_OF_EMPLOYEES FROM EMP GROUP BY JOB ORDER BY NO_OF_EMPLOYEES;

--10. List the average salary from each job excluding manager.
Ans
SELECT JOB, AVG(SAL) FROM EMP  WHERE JOB <> 'MANAGER' GROUP BY JOB;

--11. List the average salary for each job type within department.
Ans
SELECT COUNT(*), AVG(sal), depTNO, job FROM emp GROUP BY depTNO, job; 

--12. List the average salary for all departments employing more than five people.
Ans
SELECT DEPTNO, AVG(SAL), COUNT(*) FROM EMP GROUP BY DEPTNO HAVING COUNT(*)> 5;

--13. Find all departments which have less than 4 employees.
Ans
SELECT DEPTNO, COUNT(*) FROM EMP GROUP BY DEPTNO HAVING COUNT(*) <4;

--14. List job of all employees where maximum salary is greater than or equal to 3000.
Ans
SELECT JOB FROM EMP GROUP BY JOB HAVING MAX(SAL)>=3000

--15. List the total salary , maximum and minimum salary and the average salary of employees job wise for department no 20 and display only those rows having average salary greater than 2000.
Ans
SELECT JOB, SUM(SAL), AVG(SAL), MAX(SAL), MIN(SAL) FROM EMP  WHERE DEPTNO = '20' GROUP BY JOB HAVING AVG(SAL)>2000;

