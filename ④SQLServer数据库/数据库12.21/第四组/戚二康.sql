--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.id,a.name
from studentinfo a 
WHERE a.score IS NULL
--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT a.sdept, AVG(a.score)
from studentinfo a
GROUP BY a.sdept
--3.	�������гɼ���ѧ����ѧ�ź�������
SELECT a.id,a.name
from studentinfo a
WHERE a.score IS NOT NULL
--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
from studentinfo a
 ORDER BY a.score DESC,a.sdept
--5.	��ѯѧ����������
SELECT COUNT(e.id) AS '����'
from studentinfo a
--6.	��ѯ������Ů����������
SELECT a.sex, COUNT(a.id)
from studentinfo a 
GROUP BY a.sex