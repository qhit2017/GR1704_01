--��ѯ���
SELECT *FROM student
--�������
UPDATE student SET name='��ΰ�'WHERE xuehao =1
--ɾ���������
DELETE FROM student
--1.	��ѯȫ��ѧ����ѧ����������
SELECT  a.xuehao,a.name
from student a
--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT b.name,b.xuehao,b.zhuanye
from student b
--3.	��ȫ��ѧ���������������䡣
SELECT  c.name,c.age
from student c
--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT *FROM student WHERE zhuanye='����'
--5.	��ѯ����������20�����µ�ѧ�������������䡣
SELECT *FROM student WHERE age<20
--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT *FROM student WHERE age<18 ORDER BY chengji
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT *FROM student WHERE chengji<60 ORDER BY chengji DESC 
--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT *FROM student WHERE age>=18AND age<=22
--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
SELECT *FROM student WHERE age>=20AND age<=23
--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT b.name,b.sex
FROM student b WHERE b.zhuanye ='����'OR b.zhuanye='it'
--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT b.name,b.sex
from student b WHERE b.zhuanye !='����'AND b.zhuanye!='����'AND b.zhuanye!='�ڿ�'
--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT ac.name,ac.sex,ac.age,ac.zhuanye,ac.chengji
from student ac WHERE ac.xuehao=1
--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT n.name,n.xuehao,n.sex
from student n WHERE n.name LIKE '��%'
--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT m.name
from student m WHERE m.name LIKE'��__'
--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT l.xuehao,l.name
from student l WHERE l.name LIKE'_��_'
--16.	��ѯ���в��ա��¡���ѧ��������
SELECT p.name
from student p WHERE p.name NOT LIKE'��%'