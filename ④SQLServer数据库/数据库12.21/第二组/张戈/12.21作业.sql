SELECT * FROM Student

--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�����
select a.Sno,a.Sname
from Student a
where a.Grade IS NULL

--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ�
SELECT b.Sdept,AVG(b.Grade) as 'ƽ���ɼ�'
FROM Student b
 GROUP BY b.Sdept

--3.	�������гɼ���ѧ����ѧ�ź�����
select c.Sno,c.Sname
from Student c
where c.Grade is NOT NULL

--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併������
select *
from Student d
 ORDER BY d.Sdept,d.Sage DESC

--5.	��ѯѧ��������
select COUNT(e.Sname) as 'ѧ��������'
from Student e

--6.	��ѯ������Ů��������
select f.Ssex,COUNT(f.Ssex) '����'
from Student f
GROUP BY f.Ssex

--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ���������
select g.Sdept,AVG( g.Grade)
from Student g
group BY g.Sdept 
ORDER  BY AVG( g.Grade) DESC



--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ�
select h.Sdept , max(h.Grade) as '��߷�'
from Student h
GROUP BY h.Sdept

--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ�
select i.Sdept , min(i.Grade) as '��ͷ�'
from Student i
GROUP BY i.Sdept

--10.	��ѯƽ���ɼ�����רҵ������
select TOP 1 j.Sdept,  AVG(j.Grade)
from Student j
GROUP BY j.Sdept
ORDER BY  AVG(j.Grade)

--11.	��ѯ������Ů����ƽ���ɼ�
select k.Ssex,AVG(k.Grade) as'ƽ���ɼ�'
from Student k
group BY k.Ssex

--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ�
select l.Sname,l.Grade, AVG(l.Grade)
from Student l

GROUP BY l.Grade
WHERE  l.Grade>AVG(l.Grade)


--13.	��ѯרҵѧ����������50�˵�רҵ��
select 
from Student m
group BY m.Sdept

--14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ��
select z.Sdept, AVG(z.Grade)
from Student z
WHERE z.Sage<18 and z.Sdept='�������ѧ'


