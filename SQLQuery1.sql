SELECT D.DNAME
FROM DEPT D
LEFT JOIN EMP E
ON D.DEPTNO= E.DEPTNO
WHERE E.DEPTNO IS NULL
SELECT JOB,ENAME
FROM EMP
WHERE JOB LIKE 'PRESIDENT'
SELECT ENAME,JOB
FROM DEPT D
FULL JOIN EMP E
ON D.DEPTNO= E.DEPTNO
WHERE LOC LIKE 'NEWYORK' AND COMM>1000
SELECT COUNT(*) AS NUMEMP
FROM DEPT D
FULL JOIN EMP E
ON D.DEPTNO= E.deptno
WHERE LOC LIKE 'CHICAGO'
SELECT ENAME, D.LOC
FROM DEPT D
FULL JOIN EMP E
ON D.DEPTNO= E.DEPTNO
WHERE LOC LIKE 'CHICAGO' 
SELECT ENAME,D.LOC
FROM DEPT D
FULL JOIN EMP E
ON D.DEPTNO= E.DEPTNO
ORDER BY D.LOC

SELECT COUNT(DISTINCT E.ENAME) AS 'TOTEMP',
	       COUNT(DISTINCT D.DEPTNO) AS 'TOTDEPT'
		   FROM EMP E, DEPT D;
SELECT E.ENAME, M.ENAME 'MANAGER', M.HIREDATE 'MANAGER HIREDATE', E.HIREDATE
FROM EMP E,EMP M
WHERE E.MGR = M.EMPNO AND E.HIREDATE<M.HIREDATE;

SELECT COUNT(DISTINCT E.MGR)
FROM EMP E , EMP W
WHERE E.MGR = W.EMPNO;

SELECT DISTINCT E.ENAME,E.JOB
FROM EMP E, EMP W
WHERE E.MGR IS NULL;

SELECT ENAME, DEPTNO
FROM EMP
WHERE ENAME LIKE '%SMIT%'

SELECT E.ENAME,E.JOB, D.LOC
FROM EMP E
INNER JOIN DEPT D 
ON E.DEPTNO = D.DEPTNO
WHERE E.JOB LIKE '%SALESM%' AND D.LOC LIKE '%BOST%';

SELECT *
FROM EMP E
JOIN DEPT D
 ON E.DEPTNO = D.DEPTNO;

 SELECT ENAME,JOB
FROM   EMP
WHERE JOB LIKE '%SALESM%' AND SAL <
                                  (SELECT SAL
                                   FROM   EMP
                                    WHERE ENAME = 'MILLER')

SELECT *
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE D.LOC LIKE 'CHICAGO';

SELECT * FROM EMP
WHERE SAL > 
            ANY  (SELECT MIN(SAL)
			FROM EMP  
			WHERE MGR=EMPNO
			GROUP BY EMPNO);

SELECT E.ENAME, E.JOB,D.DNAME, E.DEPTNO
FROM EMP E
LEFT JOIN DEPT D 
ON E.DEPTNO = D.DEPTNO
WHERE D.DNAME LIKE '%ACCOUN%'

SELECT DISTINCT E.ENAME, M.MGR
FROM EMP E, EMP M
WHERE E.EMPNO = M.MGR;

Select DNAME,
      CASE
     WHEN DNAME = 'SALES' THEN 'SALES'
     Else 'NON SALES'
     END AS 'CHECK'
      from DEPT

	  Select SAL,
      CASE
     WHEN SAL > 1000 THEN SAL
     Else 1000
     END AS 'DEFAULT SALARY'
      from EMP

	  Select SAL,
      CASE
     WHEN SAL < 1000 THEN 'LESS' 
     WHEN SAL > 2500 THEN 'HIGH'
	 ELSE 'MEDIUM'
     END AS 'DESC'
      from EMP



