INSERT INTO jeishubiao VALUES (1,'����','�İ�')
INSERT INTO jeishubiao VALUES (2,'���','�İ�')
INSERT INTO jeishubiao VALUES (3,'����','�İ�')
INSERT INTO jeishubiao VALUES (4,'����','����')
INSERT INTO jeishubiao VALUES (5,'�ŷ�','����')
INSERT INTO jeishubiao VALUES (6,'�ܲ�','һ��')
INSERT INTO jeishubiao VALUES (7,'�����','����')
INSERT INTO jeishubiao VALUES (8,'��','����')
INSERT INTO jeishubiao VALUES (9,'���','����')
INSERT INTO jeishubiao VALUES (10,'��Ȩ','����')
INSERT INTO jeishubiao VALUES (11,'��ά','һ��')
INSERT INTO jeishubiao VALUES (12,'����','�İ�')
INSERT INTO jeishubiao VALUES (13,'����','һ��')
INSERT INTO jeishubiao VALUES (14,'����','����')
INSERT INTO jeishubiao VALUES (15,'����','����')
INSERT INTO jeishubiao VALUES (16,'κ��','�İ�')
INSERT INTO jeishubiao VALUES (17,'����','����')
INSERT INTO jeishubiao VALUES (18,'����','�İ�')
INSERT INTO jeishubiao VALUES (19,'˾��ܲ','һ��')
INSERT INTO jeishubiao VALUES (20,'³��','�İ�')

INSERT INTO tushubiao VALUES (101,'���μ�','��ж�',25,30)
INSERT INTO tushubiao VALUES (102,'ˮ䰴�','ʩ����',24,29)
INSERT INTO tushubiao VALUES (103,'��¥��','��ѩ��',35,23)
INSERT INTO tushubiao VALUES (104,'��������','�޹���',36,21)
INSERT INTO tushubiao VALUES (105,'���������','����ͨ',15,30)
INSERT INTO tushubiao VALUES (106,'���簲ȫԭ��','������',16,43)
INSERT INTO tushubiao VALUES (107,'������+','ϰ��ƽ',8,34)
INSERT INTO tushubiao VALUES (108,'�����Ӳ��','����',21,41)
INSERT INTO tushubiao VALUES (109,'���ݿ�ԭ��','ë��',19,38)


INSERT  INTO jilubiao VALUES (001,103,'2016-6-12')
INSERT  INTO jilubiao VALUES (002,105,'2016-8-13')
INSERT  INTO jilubiao VALUES (003,106,'2016-8-22')
INSERT  INTO jilubiao VALUES (004,103,'2016-8-24')
INSERT  INTO jilubiao VALUES (005,108,'2016-8-26')
INSERT  INTO jilubiao VALUES (006,104,'2016-9-12')
INSERT  INTO jilubiao VALUES (007,109,'2016-9-15')
INSERT  INTO jilubiao VALUES (008,101,'2016-9-17')
INSERT  INTO jilubiao VALUES (009,102,'2016-9-19')
INSERT  INTO jilubiao VALUES (0010,101,'2016-9-22')
INSERT  INTO jilubiao VALUES (0011,107,'2016-9-28')
INSERT  INTO jilubiao VALUES (0012,106,'2016-9-30')
INSERT  INTO jilubiao VALUES (0013,104,'2016-10-6')
INSERT  INTO jilubiao VALUES (0014,107,'2016-10-9')
INSERT  INTO jilubiao VALUES (0015,103,'2016-10-12')
INSERT  INTO jilubiao VALUES (0016,105,'2016-10-12')
INSERT  INTO jilubiao VALUES (0017,107,'2016-10-13')
INSERT  INTO jilubiao VALUES (0018,106,'2016-10-13')
INSERT  INTO jilubiao VALUES (0019,107,'2016-10-15')
INSERT  INTO jilubiao VALUES (0020,104,'2016-10-18')
INSERT  INTO jilubiao VALUES (0021,104,'2016-10-19')
INSERT  INTO jilubiao VALUES (0022,106,'2016-10-20')
INSERT  INTO jilubiao VALUES (0023,105,'2016-10-21')
INSERT  INTO jilubiao VALUES (0024,107,'2016-10-22')
INSERT  INTO jilubiao VALUES (0025,101,'2016-10-22')
INSERT  INTO jilubiao VALUES (0026,107,'2016-10-22')
INSERT  INTO jilubiao VALUES (0027,103,'2016-10-25')
INSERT  INTO jilubiao VALUES (0028,105,'2016-10-26')
INSERT  INTO jilubiao VALUES (0029,104,'2016-10-28')
INSERT  INTO jilubiao VALUES (0030,106,'2016-10-30')



--1.��ѯ��������"ԭ��"�ؼ��ʵ�ͼ�飬�����š����������ߡ�
SELECT a.bno,a.bname,a.author
from tushubiao a
WHERE a.bname LIKE '%ԭ��%'
--2.��ѯ���ƽ���۸�  
SELECT AVG(a.price) 
from tushubiao a
--3.������������Ȿ��Ŀ��������Ϊ20�����۸�Ϊ13.1
UPDATE tushubiao SET  quantity=20, price=13.1
WHERE bname='���������'
--4.��ѯ������Ŀ��һ���ж��� 
SELECT SUM(a.quantity) 
from tushubiao a
--5.��ѯ�ı��鱻��Ĵ�����࣬��������ʹ���

