--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
select a.sno,a.sname
from xueshengbiao a
WHERE a.grade IS null

--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT b.sdept ,AVG(b.grade)
from xueshengbiao b
GROUP BY b.sdept

--3.	�������гɼ���ѧ����ѧ�ź�������
SELECT *
from xueshengbiao c
WHERE c.grade is Not null

--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
FROM xueshengbiao d
ORDER BY d.sdept,d.ssex DESC
 
--5.	��ѯѧ����������
SELECT COUNT(e.sno) as '������'
from xueshengbiao e

