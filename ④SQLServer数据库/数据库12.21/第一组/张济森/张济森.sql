SELECT * FROM studentinfo
--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.id,a.name
from studentinfo a 
WHERE a.score IS NULL

--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT b.sdept, AVG(b.score)
from studentinfo b
GROUP BY b.sdept

--3.	�������гɼ���ѧ����ѧ�ź�������
SELECT c.id,c.name
from studentinfo c
WHERE c.score IS NOT NULL
--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
from studentinfo d
 ORDER BY d.score DESC,d.sdept

--5.	��ѯѧ����������
SELECT COUNT(e.id) AS '����'
from studentinfo e


--6.	��ѯ������Ů����������
SELECT f.sex, COUNT(f.id)
from studentinfo f 
GROUP BY f.sex