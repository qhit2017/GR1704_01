INSERT INTO abc VALUES(1,'����','��',17,'�������ѧ',null)
INSERT INTO abc VALUES(2,'����','��',16,'�������ѧ',90)
INSERT INTO abc VALUES(3,'����','��',20,'��ѧϵ',80)
INSERT INTO abc VALUES(4,'����','Ů',18,'��ѧϵ',92)
INSERT INTO abc VALUES(5,'������','Ů',17,'��ѧϵ',50)
INSERT INTO abc VALUES(6,'����','��',19,'�������ѧ',70)
INSERT INTO abc VALUES(7,'����','��',19,'��ѧϵ',90)
INSERT INTO abc VALUES(8,'����','��',18,'��ѧϵ',97)
INSERT INTO abc VALUES(9,'�����','��',21,'�������ѧ',100)
INSERT INTO abc VALUES(10,'���','��',20,'�������ѧ',58)
INSERT INTO abc VALUES(11,'С��','Ů',17,'��ѧϵ',92)
INSERT INTO abc VALUES(12,'����','Ů',21,'it',93)
INSERT INTO abc VALUES(13,'�ŷ�','��',20,'it',70)
INSERT INTO abc VALUES(14,'����','��',16,'��ѧϵ',80)
INSERT INTO abc VALUES(15,'�ܲ�','��',20,'it',100)
INSERT INTO abc VALUES(16,'����','��',18,'�������ѧ',90)
INSERT INTO abc VALUES(17,'����','Ů',21,'it',95)
INSERT INTO abc VALUES(18,'������','��',19,'��ѧϵ',100)
INSERT INTO abc VALUES(19,'��Ԫ��','��',19,'it',100)
INSERT INTO abc VALUES(20,'������','Ů',19,'it',91)

SELECT*FROM abc
DELETE FROM abc
--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.sno ,a.sname
from abc a
WHERE a.grade IS NULL

--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT a.sdept, AVG(a.grade)
from abc a
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
--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
SELECT a.sdept,AVG(a.grade)
from abc a
GROUP BY a.sdept 
ORDER BY AVG(a.grade) DESC
--4.��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
from abc b
ORDER BY b.sdept,b.sage DESC
--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
SELECT a.sdept,MAX(a.grade)
from abc a
GROUP BY a.sdept 
--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
SELECT a.sdept,MIN(a.grade)
from abc a
GROUP BY a.sdept 
--11.	��ѯ������Ů����ƽ���ɼ���
SELECT a.ssex,AVG(a.grade)
from abc a
GROUP BY a.ssex