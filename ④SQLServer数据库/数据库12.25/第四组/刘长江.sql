--1.��ѯ���������ǡ�SALES����Ա����Ϣ

select *
from emp b
where b.DEPTNO=(select a.DEPTNO
    from DEPT a
    where a.DNAME='sales')
    
--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ

select *
from EMP d
where SAL=(select MAX(c.SAL)
    from EMP c)
    
--3.��ѯ�����������нˮ��Ա����ţ�������
select e.EMPNO,e.ENAME
from EMP e
where SAL in(select MAX(e.SAL)
  from EMP e
  group by e.DEPTNO)

--4.��ѯ���������нˮ��Ա����Ϣ 

select *
from EMP g
where SAL in(select MAX(f.SAL)
  from EMP f
  group by f.DEPTNO)

--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT *
FROM EMP k
WHERE k.MGR=(SELECT j.EMPNO
from EMP j
WHERE j.ENAME='BLAKE')

--8.��ѯ��SMITH������ͬ��Ա����Ϣ 

select *
from EMP m
where m.JOB=(select l.JOB
from EMP l
where l.ENAME ='smith')

--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű�� 

 SELECT o.DEPTNO
 FROM EMP o
 GROUP BY o.DEPTNO
  HAVING AVG(o.SAL)<(SELECT AVG(n.SAL)
FROM EMP n
 WHERE n.DEPTNO='10')

--10.��ѯ��NEW YORK����������Ա�� 
select *
from EMP p
where p.JOB='newyork'

--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı�����

select COUNT(W.EMPNO)/(select COUNT(Q.EMPNO)
FROM EMP Q
WHERE Q.DEPTNO='10' )
FROM EMP W 
--13���ҳ�нˮ��ߵ������ 
select TOP 5q.ENAME
from EMP q
ORDER BY q.SAL DESC