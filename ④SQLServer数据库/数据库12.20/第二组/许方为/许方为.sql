SELECT * FROM zuoye;

INSERT INTO zuoye VALUES (1,'С��','��','14','�廪it','60')
INSERT INTO zuoye VALUES (2,'С��','Ů','19','���˹�','60')
INSERT INTO zuoye VALUES (3,'С��','��','16','���߽�','60')
INSERT INTO zuoye VALUES (4,'С��','Ů','20','ҽ��','60')
INSERT INTO zuoye VALUES (5,'С��','��','21','��ʦ','60')
INSERT INTO zuoye VALUES (6,'С��','��','11','��ʦ','60')
INSERT INTO zuoye VALUES (7,'С��','Ů','15','����','60')
INSERT INTO zuoye VALUES (8,'С��','��','17','�Ƴ�','60')
INSERT INTO zuoye VALUES (9,'С��','��','18','��ש','60')
INSERT INTO zuoye VALUES (10,'Сͬ','Ů','33','����','60')
--1.	��ѯȫ��ѧ����ѧ����������
SELECT a.xuehao,a.xingming
from zuoye a
--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT b.xingming,b.xuehao,b.zuanyeming
from zuoye b
--3.	��ȫ��ѧ����������������
SELECT c.xingming,c.nianling
from zuoye c
--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT D.zuanyeming '��ʦ',d.xingming
from zuoye D
--5.	��ѯ����������20�����µ�ѧ��������������
SELECT e.nianling '<20'
from zuoye e
--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT *
from zuoye f
where f.nianling <18
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT *
FROM zuoye j
WHERE j.chengji=60;
--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ������
SELECT *
FROM zuoye h
WHERE h.nianling>=18
--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ������
SELECT q.xingming,q.zuanyeming,q.nianling
FROM zuoye q
WHERE not(q.nianling>=20 OR q.nianling<=23)
--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT *
from zuoye g
WHERE g.zuanyeming='����'
--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������
SELECT *
FROM zuoye l
HAVING l.xingming='С%'
--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ��
SELECT *
from zuoye o
WHERE o.xingming= '%��'










 
 






























