SELECT e.ename,job
from emp e,dept d
WHERE job='clerk';
select e.ename,job
from emp e,dept d
where job='manager'OR job='clerk';
select e.ename,empno,GETDATE() as todaydate
From emp e;

select  e.ename,e.sal
from emp e
where sal BETWEEN 500 AND 1000;

select ename,hiredate
from emp
where month(hiredate)=12;


select e.ename,e.sal
from emp e
where sal  NOT  BETWEEN 1000 AND 2000;

SELECT e.ename,e.sal
from emp e
where sal in (800,950,3000,5000);

select  ename
from emp
where ename LIKE'_L%';

select ename
FROM emp
where ename LIKE'_D%';

select ename 
FROM emp
WHERE LEN(ename)=5;

select ename
from emp
where ename LIKE't%r';

select ename
from emp
where ename LIKE'A%';

select ename,hiredate
from emp
where day(hiredate)<19;

select ename,empno
from emp
where ename='james';

select ename,sal
from emp
where ename='king';



select ename,dname,job
from emp,dept
where job='president';

select ename,dname,job
from emp,dept
where job='manager';

select empno,ename
from emp
where comm is not  null
Union
select empno,'NA'
from jobhist
where enddate is not null;

select ename,hiredate
from emp
where hiredate<'1-apr-1981';

select  empno,ename,sal
from emp
where ename in ('KING','BLAKE','FORD','SMITH');

select empno,ename,sal
from emp
where sal<3500;

select  DISTINCT ENAME,empno,job
from emp,dept
where job='clerk'

select ename, sal*12 as 'ANUAL',sal
from emp
where sal<1000 OR deptno=30
order by ANUAL ;

select ename,empno,sal*12*0.2 as' Anual'
from emp 
where ename='ford';

Select deptno,sum(sal) as total
from emp
group by deptno;

select ename,sal
from emp
where deptno=10 and sal<1400;

select ename,empno,job,avg(sal)as average
from emp e
where job='manager'
group by ename,empno,job;

select ename,empno,job,sum(sal) as total
from emp e
where job='salesman'
group by ename,empno,job;

select deptno,avg(sal) as'low avg salary'
from emp
group by deptno
having avg(sal)<(select avg(sal));

select job,count(job)as number
from emp
group by job;

select max(sal) as'maxsal',job 
from emp
where job='analyst'
group by job;

select max(comm) as commission
from emp;

select deptno,
count(deptno) as count
from emp
group by deptno;

select ename
from emp
where ename LIKE'__i%';




















