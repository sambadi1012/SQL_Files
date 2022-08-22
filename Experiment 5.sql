EXP: 5
SELECT * FROM EMP;

SELECT * FROM DEPT;

--1. Display the name of employee who earns maximum salary.
Ans
SELECT ENAME, SAL FROM EMP WHERE SAL IN (SELECT MAX(SAL) FROM EMP);

--2. Display the name of employee who earns maximum salary whose job is salesman.
Ans
SELECT ENAME, SAL FROM EMP WHERE SAL IN (SELECT MAX(SAL) FROM EMP WHERE JOB='SALESMAN');

--3. Display the department number whose salary is maximum.
Ans
SELECT DEPTNO FROM EMP WHERE SAL IN (SELECT MAX(SAL) FROM EMP);

--4. List the employees earns more than any employee in CHICAGO.
Ans
SELECT  * FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO AND LOC NOT IN 'CHICAGO' AND SAL>2850

--5. List the name of the employee who works in the same department as SMITH.
Ans
SELECT ENAME FROM EMP WHERE DEPTNO = 20;

--6. List the name of the employee job is same as CLARK.
Ans
SELECT ENAME FROM EMP WHERE JOB = 'CLERK';

--7. List the name of the employee whose salary is more than TURNER.
Ans
SELECT ENAME FROM EMP WHERE SAL>(SELECT SAL FROM EMP WHERE ENAME = 'TURNER');

--8. List the name of employee who joined after ALLEN.
Ans
SELECT ENAME FROM EMP WHERE HIREDATE>(SELECT HIREDATE FROM EMP WHERE ENAME='ALLEN');

--9. Display the name of the department whose job is SALESMAN.
Ans
SELECT ENAME,DNAME FROM DEPT D, EMP E WHERE D.DEPTNO = E.DEPTNO AND JOB = 'SALESMAN'; 

--10. Display the name of the department in which FORD works.
Ans
SELECT DNAME FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO AND ENAME = 'FORD'

--11. Display the name of the city(location) in which SMITH works.
Ans
SELECT LOC FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO AND ENAME = 'SMITH'

--12. Display the name of the city in which the manager works.
Ans
SELECT LOC FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO AND JOB = 'MANAGER'

--13. Display the grade of the employee named MARTIN.
Ans
SELECT ENAME, SAL, GRADE FROM EMP , SALGRADE WHERE SAL BETWEEN LOSAL AND HISAL AND ENAME = 'MARTIN'

--14. Display the name of the department which has no employee.
Ans
SELECT DNAME FROM DEPT WHERE DEPTNO NOT IN (SELECT DEPTNO FROM EMP);

--15. List the name of the department who gets commission.
Ans
SELECT DNAME FROM DEPT WHERE DEPTNO IN(SELECT DEPTNO FROM EMP WHERE COMM IS NOT NULL);

--16. List the employees who work in the same post as SMITH.
Ans
SELECT ENAME FROM EMP WHERE JOB IN (SELECT JOB FROM EMP WHERE ENAME = 'SMITH');

--17. List all employees who earn more than every employee in the Sales
Ans
SELECT ENAME FROM EMP WHERE SAL > (SELECT MAX(SAL) FROM EMP WHERE JOB = 'SALESMAN');

--18. Display the department number whose average salary is maximum.
Ans
SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING AVG(SAL) > (SELECT AVG(SAL) FROM EMP);