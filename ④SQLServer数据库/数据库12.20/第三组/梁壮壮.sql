

--1.	��ѯȫ��ѧ����ѧ����������

SELECT a.xuehao,a.xingming
from student a

--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT b.xingming,b.xuehao,b.zhuanyeming
from student b

--3.	��ȫ��ѧ���������������䡣
SELECT c.xingming,c.nianling
from student c

--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT *
FROM student WHERE zhuanyeming ='�����'

--5.	��ѯ����������20�����µ�ѧ�������������䡣
SELECT e.nianling,e.xingming
from student e WHERE e.nianling<20

--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT f.xingming,f.nianling,f.chengji
FROM student f
where f.nianling <18 
ORDER BY f.chengji desc

--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT*
from student g
WHERE g.chengji<60
ORDER BY g.chengji DESC

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT h.xingming,h.zhuanyeming,h.nianling
from student h
WHERE h.nianling>=18 AND h.nianling<=22

--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
SELECT i.xingming,i.zhuanyeming,i.nianling
from student i
WHERE i.nianling<20 OR i.nianling>23

--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT o.xingming,o.xingbie,o.zhuanyeming
from student o
WHERE o.zhuanyeming='��Ϣϵ' OR
o.zhuanyeming='��ѧϵ'OR
o.zhuanyeming='�������ѧϵ'

--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT q.zhuanyeming,q.xingming,q.xingbie
from student q
WHERE q.zhuanyeming!='��Ϣϵ'AND
q.zhuanyeming!='��ѧϵ'

--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ���
SELECT *
FROM student w
WHERE w.xuehao='1'

--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT z.xingming,z.xuehao,z.xingbie
from student z
WHERE z.xingming like'��%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT n.xingming
from student n
WHERE n.xingming LIKE '��%%'

--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT m.xingming,m.xuehao
from student m
WHERE m.xingming LIKE '_��_'

--16.	��ѯ���в��ա��¡���ѧ��������
SELECT x.xingming
from student x
WHERE x.xingming!='��'
