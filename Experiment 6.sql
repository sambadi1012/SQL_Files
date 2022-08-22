EXP: 6

--1. List all employee names, dept name and the cityin department name order.
Ans
SELECT ENAME, DNAME, LOC FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO ORDER BY DNAME

--2. List the employee name , dept number, dept name and salary.
Ans
SELECT ENAME, E.DEPTNO, DNAME, SAL FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO 

--3. List the employee working in Dallas in descending order in salary.
Ans
SELECT ENAME, LOC, SAL FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO AND LOC = 'DALLAS' ORDER BY SAL DESC

--4. List all employees name , job and salary and department name for everyone in the company except clerks. Sort the report with respect to job and salary.
Ans
SELECT ENAME, JOB, SAL, DNAME FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO AND JOB <> 'CLERK' ORDER BY JOB, SAL 

--5. List the name , employee number and their manager name, and manager number.
Ans
SELECT e.employee_id 'Emp_Id', e.last_name 'Employee', m.employee_id 'Mgr_Id', m.last_name 'Manager' FROM employees e join employees m ON (e.manager_id = m.employee_id); 

--6. List name, employee number and the name , employee number of their managers
Ans
SELECT e.employee_id 'Emp_Id', e.last_name 'Employee', m.employee_id 'Mgr_Id', FROM employees e join employees m ON (e.manager_id = m.employee_id); 

--7. List the name of the employee who joined in the same year of ADAMS.
Ans
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES WHERE HIRE_DATE LIKE '__-___-05' 

--8. List the name of the employee who joined in the same month of BLAKE.
Ans
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES WHERE HIRE_DATE LIKE '__-JUN-__' 

--9. List the name of the employee who joined in the same date of ADAMS.
Ans
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES WHERE HIRE_DATE =(SELECT HIRE_DATE FROM EMPLOYEES WHERE FIRST_NAME ='ADAM')