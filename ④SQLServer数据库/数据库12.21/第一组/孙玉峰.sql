SELECT *FROM student
--��ѯ������Ů����������
SELECT a.ssex,COUNT(*)as'����'
from student a
GROUP by a.ssex

--��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����
SELECT  b.Sdept, avg(c.grade)as'ƽ���ɼ�'
from student b
GROUP by b.Sdept


--��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
SELECT MAX(c.Grade)
from student c
GROUP BY c.Sdept

--��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT d.sno,d.sname
from student d
WHERE d.Grade is null  

--��ѯѧ����������
SELECT COUNT(*)as '����'
from student e

