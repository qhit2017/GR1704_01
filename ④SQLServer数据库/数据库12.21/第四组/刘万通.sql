SELECT *FROM student
--��ѯ������Ů����������
SELECT a.ssex,COUNT(*)as'����'
from student a
GROUP by a.ssex

--��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����
SELECT  c.Sdept, avg(c.grade)as'ƽ���ɼ�'
from student c
GROUP by c.Sdept
--��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
SELECT MAX(c.Grade)
from student c
GROUP BY c.Sdept






--��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT c.sno,c.sname
from student c
WHERE c.Grade is null  

--��ѯѧ����������
SELECT COUNT(*)as '����'
from student c

