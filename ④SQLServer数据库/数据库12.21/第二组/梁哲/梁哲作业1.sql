--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.Sno,a.Sname
from Student a
WHERE a.Grade IS NULL
--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT  b.Sdept,avg(b.Grade)AS 'ƽ���ɼ�'
from Student b
GROUP BY b.Sdept
--3.	�������гɼ���ѧ����ѧ�ź�������
SELECT c.Sno,c.Sname
from Student c
WHERE c.Grade IS not NULL 
--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
SELECT*
from Student d
ORDER BY d.Sdept,d.Sage DESC
--5.	��ѯѧ����������
SELECT COUNT(e.Sno)AS'������'
from Student e
--6.	��ѯ������Ů����������
SELECT q.Ssex,COUNT(q.Ssex) as'����Ů������'
from Student q
GROUP BY q.Ssex
--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
SELECT r.Sdept,AVG(r.Grade)
from Student r
GROUP BY r.Sdept
ORDER BY AVG(r.Grade)  DESC

