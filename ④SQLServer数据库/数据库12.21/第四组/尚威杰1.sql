SELECT * FROM studentinfo

--1.	��ѯÿ��������ѧ����ƽ���ɼ���
SELECT a.class, AVG(a.score) as '�ɼ�'
from studentinfo a
GROUP BY a.score,a.class 
--2.	�������гɼ���ѧ����ѧ�ź�������
SELECT b.score,b.name,b.id
from studentinfo b
--3.	��ѯ������Ů����������
SELECT c.sex, count(*)as '����'
from studentinfo c
GROUP BY c.sex
--4.	��ѯѧ����������
SELECT  COUNT(d.name) as '������'
from studentinfo d
--5.	��ѯÿ�������гɼ���õ�ѧ���ɼ���
SELECT e.nation ,max (e.score)
from studentinfo e
group BY e.nation
--6.	��ѯÿ�������гɼ�����ѧ���ɼ���
SELECT q.nation,MIN(q.score)as '�ɼ�'
from studentinfo q
group BY q.nation
--7.	��ѯƽ���ɼ�������������֡�
SELECT  MIN(w.nation) as '��������'
from studentinfo w
--8.	��ѯ������Ů����ƽ���ɼ���
SELECT c.sex,AVG(c.score)as 'ƽ���ɼ�'
from studentinfo c
group BY c.sex

--9.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT o.id,o.name
from studentinfo o
where o.score IS NULL



