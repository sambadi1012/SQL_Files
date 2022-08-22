EXP: 1
--1. List the names and code of all employees.
Ans
SELECT EMPNO, ENAME FROM EMP;

--2. List the names , employee code and department code of all managers.
Ans
SELECT ENAME, EMPNO, DEPT NO FROM EMP WHERE JOB= 'MANAGER';

--3. List the names, employee code and salary of all clerks.
Ans
SELECT ENAME, EMPNO, SAL FROM EMP WHERE JOB='CLERK';

--4. List the names, employee code and hiredate of all analysts.
Ans
SELECT ENAME, EMPNO, HIREDATE FROM EMP WHERE JOB='ANALYST';

--5. List the employees whose salary less than 1000.
Ans
SELECT * FROM EMP WHERE SAL < 1000;

--6. List the employees whose salary greater than 4000.
Ans
SELECT * FROM EMP WHERE SAL > 4000;

--7. List the name of all employees who are either clerks or salesman or analyst.
Ans
SELECT ENAME FROM EMP WHERE JOB ='CLERK' OR JOB = 'SALESMAN' OR JOB = 'ANALYST';

--8. List all manager who earn more than 4000.
Ans
SELECT * FROM EMP WHERE JOB = 'MANAGER' AND SAL>4000;

--9. List all clerks and salesman who earn more than 1600.
Ans
SELECT * FROM EMP WHERE JOB IN ('CLERK','SALESMAN') AND SAL 1600;

--10. List the names and salaries of all employees who were joined as manager during 1981.
Ans
SELECT ENAME, SAL FROM EMP WHERE JOB = 'MANAGER' AND HIREDATE LIKE '%81';

--11. List the names of the clerks working in the department 20.
Ans
SELECT ENAME FROM EMP WHERE JOB='CLERK' AND DEPTNO ='20';

--12. List the details of the employees who have joined before the end of September 81.
Ans
SELECT * FROM EMP WHERE HIREDATE < ('30-SEP-81');

--13. List the names of the employees who are not managers.
Ans
SELECT ENAME FROM EMP WHERE JOB <> 'MANAGER';