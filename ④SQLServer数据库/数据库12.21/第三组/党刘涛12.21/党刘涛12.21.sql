--��ѯ����ѧ��
SELECT * FROM student
--ɾ������ѧ��
--DELETE FROM student
--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.sno as 'ѧ��',a.sname AS '����'
from student a
WHERE a.grade is NULL
--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT b.sdept AS 'רҵ' ,AVG(b.grade)as 'ƽ����'
 from	student b
 GROUP BY b.sdept 
 --3.	�������гɼ���ѧ����ѧ�ź�������
 SELECT	c.sno,c.sname
 from	student c
 WHERE c.grade>0
 --4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
	
 SELECT * 
 from	student e
 
 ORDER BY e.sdept ASC,e.sage DESC
 --5.	��ѯѧ����������
 SELECT COUNT(e.sname)
 from	student e
 --6.	��ѯ������Ů����������
 SELECT l.ssex, COUNT(l.ssex)
 from student l
 GROUP BY l.ssex
 --7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
 SELECT	o.sdept,AVG(o.grade)
 from student o
  GROUP BY o.sdept
  ORDER BY AVG(o.grade)DESC
  --8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
  SELECT f.sdept,MAX(f.grade)
  from student f
  GROUP BY f.sdept
--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
SELECT q.sdept,MIN(q.grade)
from student q
 GROUP BY q.sdept
--10.	��ѯƽ���ɼ�����רҵ
SELECT TOP 1 m.sdept
from	student m
 GROUP BY m.sdept 
 ORDER BY AVG(m.grade)
--11.	��ѯ������Ů����ƽ���ɼ���
SELECT s.ssex,AVG(s.grade)
from student s
 GROUP BY s.ssex
 --12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���
 SELECT t.sname,t.grade
 from student t
 WHERE t.grade>(SELECT AVG(grade) from student)

 --13.	��ѯרҵѧ����������50�˵�רҵ����
 SELECT v.sdept
 from student v
  GROUP BY v.sdept
  HAVING COUNT(v.sno)>2
  --14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����
  SELECT r.sdept, AVG(r.grade)
  from student r
   WHERE r.sdept ='�����'AND r.sage<18

  
  