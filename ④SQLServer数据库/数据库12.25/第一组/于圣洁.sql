select *
from EMP 
select *
from DEPT 
--1.��ѯ���������ǡ�SALES����Ա����Ϣ 
select *
from DEPT  a cross join EMP b


--2.��ѯ��˾��нˮ��ߵ�Ա����Ϣ 
select MAX (b.SAL ) 
from EMP b
select *
from EMP b
where b.SAL =(select MAX (b.SAL ) 
from EMP b)


--3.��ѯ�����������нˮ��Ա����ţ������� 
select MAX (c.SAL )
from EMP c
select c.EMPNO ,c.ENAME 
from EMP c
where c.SAL =(select MAX (c.SAL )
from EMP c)

--4.��ѯ���������нˮ��Ա����Ϣ 
select MAX(d.SAL )
from EMP d
select *
from EMP d
where d.SAL =(select MAX(d.SAL )
from EMP d)

--5.��ѯнˮ���ڸò���ƽ��нˮ��Ա����Ϣ 
select AVG (e.SAL )
from EMP e
group by e.DEPTNO 

select *
from EMP e
where e.SAL > AVG (e.SAL )


--6.��ѯ���������ǡ�SALES����Ա����Ϣ 

--7.��ѯ�쵼���ǡ�BLAKE����Ա����Ϣ
select *
from EMP f
where f.MGR is null 

--8.��ѯ��SMITH������ͬ��Ա����Ϣ 
select g.JOB 
from EMP g
where g.ENAME ='smith'
select *
from EMP g
where g.JOB =(select g.JOB 
from EMP g
where g.ENAME ='smith')

--9.��ѯƽ�����ʱ�10���ŵ͵Ĳ��ű��
select AVG (k.SAL )
from EMP k
where k.DEPTNO =10 
select k.DEPTNO 
from EMP k
where k.sal <(select AVG (k.SAL )
from EMP k
where k.DEPTNO =10 )

--10.��ѯ��NEW YORK����������Ա�� 
select * 
from DEPT a
where a.LOC ='new york'


--11.��ѯ10�Ų��ŵ�Ա����������˾����ռ�ı�����
 

--12����ѯ����ͨԱ�������нˮ��Ҫ�ߵ��쵼������ 
--13���ҳ�нˮ��ߵ������ 
--14���г�����������Ա�������в��źͲ�����Ϣ
--15����ѯ�����ְ��5��Ա��
--16���г����н�����1500�ĸ��ֹ����Լ����´˹�����ȫ����Ա����

--17���г����ֹ�������͹����Լ����¸ù����Ĺ�Ա����

--18����нˮ��͵Ĳ��ž������ڲ��ŵ�����

