SELECT *
from EMP
--.��ѯ���������ǡ�SALES����Ա����Ϣ 
SELECT *
FROM dept a
where a.DNAME='sales'


--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
SELECT MAX(a.SAL)
FROM EMP a

SELECT *
from EMP b
where b.SAL=(SELECT MAX(a.SAL)
FROM EMP a)


--3.��ѯ�����������нˮ��Ա����ţ������� 
SELECT MAX(a.SAL)
FROM EMP a
GROUP by a.DEPTNO

 SELECT b1.EMPNO,b1.ENAME
 from EMP b1
 where b1.SAL IN (SELECT MAX(a.SAL)
FROM EMP a
GROUP by a.DEPTNO)




--4.��ѯ���������нˮ��Ա����Ϣ 

SELECT *
 from EMP b1
 where b1.SAL IN (SELECT MAX(a.SAL)
FROM EMP a
GROUP by a.DEPTNO)




--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
SELECT AVG(a.SAL) 
from EMP a
GROUP by a.DEPTNO
SELECT *
FROM EMP a
where a.SAL>()AVG(a.SAL(SELECT AVG(a.SAL) 
from EMP a)
    




--6.��ѯ���������ǡ�SALES����Ա����Ϣ
SELECT *
FROM dept a
where a.DNAME='sales'

 

--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ 
SELECT *
from EMP a
where a.ENAME='blake'



--8.��ѯ��SMITH������ͬ��Ա����Ϣ 

SELECT *
FROM EMP a
where a.JOB=(SELECT a.JOB
from EMP a
WHERE a.ENAME='smith')



--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű��
SELECT a.DEPTNO
from EMP a
GROUP BY a.DEPTNO
HAVING AVG(a.SAL)<(SELECT AVG(a.SAL)from EMP a WHERE a.DEPTNO=10 ) 

--10.��ѯ��NEW YORK����������Ա�� 
SELECT *
from dept A
where A.loc='new york'


11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı����� 

12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ 
13���ҳ�нˮ��ߵ������ 
14���г�����������Ա�������в��źͲ�����Ϣ
15����ѯ�����ְ��5��Ա��
16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����

17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����

18����нˮ��͵Ĳ��ž������ڲ��ŵ�����
