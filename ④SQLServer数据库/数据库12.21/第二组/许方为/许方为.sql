SELECT *   from zuoye;

--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.xuehao,a.xingming
FROM zuoye a
WHERE a.chengji is null

--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT b.zuanyeming,  avg(b.chengji) as'ƽ���ɼ�'
from zuoye b
 group by  b.zuanyeming
 
--3.	�������гɼ���ѧ����ѧ�ź�������
SELECT c.chengji , c.xuehao,c.xingming
from zuoye c
WHERE  c.chengji is NOT NULL

--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
from zuoye d
GROUP  
--5.	��ѯѧ����������
select max (f.xuehao)
from zuoye f


--6.	��ѯ������Ů����������
SELECT v.xingbie,count (*) as '����'
from zuoye v
group  by v.xingbie

--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
SELECT k.zuanyeming, AVG(k.chengji) as'ƽ��ֵ'
from zuoye k
group by k.zuanyeming
ORDER BY AVG(k.chengji)DESC

--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
SELECT o.zuanyeming,MAX(o.chengji) AS'��óɼ�'
from zuoye o
group BY o.zuanyeming

--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
SELECT o.zuanyeming,MIN(o.chengji) AS'���ɼ�'
from zuoye o
group BY o.zuanyeming

--10.	��ѯƽ���ɼ�����רҵ�����֡�
SELECT  top 1 z.zuanyeming, avg (z.chengji)as'���'
from zuoye z
GROUP BY z.zuanyeming

--11.	��ѯ������Ů����ƽ���ɼ���
SELECT u.xingbie ,avg (u.chengji)as'ƽ���ɼ�'
from zuoye u
GROUP BY u.xingbie

--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���
SELECT m.chengji,(m.xingming,m.chengji) 
from zuoye m
GROUP BY m.chengji>avg


--13.	��ѯרҵѧ����������50�˵�רҵ����
--14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����

