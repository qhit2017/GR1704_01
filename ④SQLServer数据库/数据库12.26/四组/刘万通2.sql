INSERT INTO ��һ VALUES (1,'����','�İ�')
INSERT INTO ��һ VALUES (2,'��ҹ','����')
INSERT INTO ��һ VALUES (3,'��Ӱ','����')
INSERT INTO ��һ VALUES (4,'�ۻ�','һ��')
INSERT INTO ��һ VALUES (5,'Ұ����','�İ�')
INSERT INTO ��һ VALUES (6,'������','����')
INSERT INTO ��һ VALUES (7,'ʯͷ��','����')
INSERT INTO ��һ VALUES (8,'����','һ��')
INSERT INTO ��һ VALUES (9,'�ε�֮��','�İ�')
INSERT INTO ��һ VALUES (10,'','����')
INSERT INTO ��һ VALUES (11,'��¡','����')
INSERT INTO ��һ VALUES (12,'����','һ��')
INSERT INTO ��һ VALUES (13,'Ů��','�İ�')
INSERT INTO ��һ VALUES (14,'��ʦ','����')
INSERT INTO ��һ VALUES (15,'����','����')
INSERT INTO ��һ VALUES (16,'����','һ��')
INSERT INTO ��һ VALUES (17,'������ʦ','�İ�')
INSERT INTO ��һ VALUES (18,'��ʹ','����')
INSERT INTO ��һ VALUES (19,'����','����')
INSERT INTO ��һ VALUES (10,'Ƥ����','һ��')
SELECT*FROM ���
INSERT INTO ��� VALUES (1,'ˮ䰴�','ʩ����',100,20)
INSERT INTO ��� VALUES (2,'���μ�','��ж�',100,20)
INSERT INTO ��� VALUES (3,'����','�޹���',100,20)
INSERT INTO ��� VALUES (4,'��¥��','��ѩ��',100,20)
INSERT INTO ��� VALUES (5,'���������','�����',100,20)
INSERT INTO ��� VALUES (6,'���簲ȫԭ��','�ݶ���',100,20)
INSERT INTO ��� VALUES (7,'������','������',100,20)
INSERT INTO ��� VALUES (8,'�����Ӳ��','�¿���',100,20)
INSERT INTO ��� VALUES (9,'���ݿ�ԭ��','������',100,20)
INSERT INTO ��� VALUES (9,'���ݿ�ԭ��','������',100,20)


INSERT INTO ���� VALUES (123456,1,'2001-2-4')
INSERT INTO ���� VALUES (1234567,2,'2001-2-3')
INSERT INTO ���� VALUES (15348,3,'2001-2-5')
INSERT INTO ���� VALUES (35697,4,'2001-2-6')
INSERT INTO ���� VALUES (75454,5,'2001-2-7')
INSERT INTO ���� VALUES (745131,6,'2001-2-8')
INSERT INTO ���� VALUES (14854,7,'2001-2-9')
INSERT INTO ���� VALUES (1796525,8,'2001-2-10')
INSERT INTO ���� VALUES (1466,9,'2001-2-11')
INSERT INTO ���� VALUES (17541,10,'2001-2-12')
INSERT INTO ���� VALUES (187541,11,'2001-2-13')
INSERT INTO ���� VALUES (1451252,12,'2001-2-14')
INSERT INTO ���� VALUES (1585,13,'2001-2-15')
INSERT INTO ���� VALUES (746561,14,'2001-2-16')
INSERT INTO ���� VALUES (46463,15,'2001-2-18')
INSERT INTO ���� VALUES (46345,16,'2001-2-20')
INSERT INTO ���� VALUES (46345,17,'2001-2-25')
INSERT INTO ���� VALUES (4563,18,'2001-2-26')
INSERT INTO ���� VALUES (4634,19,'2001-3-3')
INSERT INTO ���� VALUES (846634,20,'2001-3-6')
INSERT INTO ���� VALUES (6448631,21,'2001-3-9')
INSERT INTO ���� VALUES (468153,22,'2001-3-10')
INSERT INTO ���� VALUES (46864563,23,'2001-3-20')
INSERT INTO ���� VALUES (48686431,24,'2001-3-21')
INSERT INTO ���� VALUES (87964,25,'2001-3-27')
INSERT INTO ���� VALUES (124687,26,'2001-3-28')
INSERT INTO ���� VALUES (468631,27,'2001-4-3')
INSERT INTO ���� VALUES (13846,28,'2001-4-5')
INSERT INTO ���� VALUES (4688763,29,'2001-4-28')
INSERT INTO ���� VALUES (7964,30,'2001-4-29')
--1.	��ѯ��������"ԭ��"�ؼ��ʵ�ͼ�飬�����š����������ߡ�

SELECT*
from ��� a
WHERE a.bname LIKE '%ԭ��%'

--2.	��ѯ���ƽ���۸�  
SELECT AVG(a.PRICE) 
from ��� a
--3.	������������Ȿ��Ŀ��������Ϊ20�����۸�Ϊ13.1
UPDATE  ��� SET  QUANTITY =20
where BNAME='���������'
UPDATE  ��� SET  PRICE =13.1
where BNAME='���������'
--4.	��ѯ������Ŀ��һ���ж��� 
SELECT SUM (a.QUANTITY ) 
from ��� a
--5.	��ѯ�ı��鱻��Ĵ�����࣬��������ʹ���
SELECT MAX(a.bname) ,COUNT(*) 
from ��� a INNER JOIN ���� b 
ON a.bon=b.bon


