INSERT INTO abc VALUES(1,'С��','��',17,'�������ѧϵ',null)
INSERT INTO abc VALUES(2,'С��','��',16,'����ϵ',90)
INSERT INTO abc VALUES(3,'С��','��',20,'��ѧϵ',80)
INSERT INTO abc VALUES(4,'С��','Ů',18,'����ϵ',92)
INSERT INTO abc VALUES(5,'С��','Ů',17,'��ѧϵ',50)
INSERT INTO abc VALUES(6,'С��','��',19,'�������ѧϵ',70)
INSERT INTO abc VALUES(7,'Сͨ','��',19,'����ϵ',90)
INSERT INTO abc VALUES(8,'С��','��',18,'��ѧϵ',97)
INSERT INTO abc VALUES(9,'С��','��',21,'�������ѧϵ',100)
INSERT INTO abc VALUES(10,'С��','��',20,'����ϵ',58)
INSERT INTO abc VALUES(11,'С��','Ů',17,'��ѧϵ',92)
INSERT INTO abc VALUES(12,'С��','Ů',21,'��������ѧϵ',93)
INSERT INTO abc VALUES(13,'Сΰ','��',20,'��������ѧϵ',70)
INSERT INTO abc VALUES(14,'С��','��',16,'��ѧϵ',80)
INSERT INTO abc VALUES(15,'С��','��',20,'��������ѧϵ',100)

SELECT*FROM abc
--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.sno ,a.sname
from abc a
WHERE a.grade IS NULL
GROUP BY a.sdept
--3.	�������гɼ���ѧ����ѧ�ź������� 
SELECT a.sno ,a.sname
from abc a
WHERE a.grade IS NOT NULL
--5.��ѯѧ����������
SELECT COUNT(*) as '������'
from abc a
--6.	��ѯ������Ů����������
SELECT a.ssex ,COUNT(*) 
from abc a
GROUP BY a.ssex
--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
SELECT a.sdept,MAX(a.grade)
from abc a
GROUP BY a.sdept 

--11.	��ѯ������Ů����ƽ���ɼ���
SELECT a.ssex,AVG(a.grade)
from abc a
GROUP BY a.ssex