





SELECT *FROM CARD 
DELETE FROM CARD where CNO =1
INSERT   INTO   CARD VALUES (1,'������','�İ�')
INSERT   INTO   CARD VALUES (2,'��','����')
INSERT   INTO   CARD VALUES (3,'��','һ��')
INSERT   INTO   CARD VALUES (4,'��','һ��')
INSERT   INTO   CARD VALUES (5,'��','�İ�')
INSERT   INTO   CARD VALUES (6,'��','����')
INSERT   INTO   CARD VALUES (7,'��','����')
INSERT   INTO   CARD VALUES (8,'��','�İ�')
INSERT   INTO   CARD VALUES (9,'��','һ��')
INSERT   INTO   CARD VALUES (10,'ʮ','�İ�')
INSERT   INTO   CARD VALUES (11,'ʮһ','����')
INSERT   INTO   CARD VALUES (12,'ʮ��','����')
INSERT   INTO   CARD VALUES (13,'ʮ��','�İ�')
INSERT   INTO   CARD VALUES (14,'ʮ��','һ��')
INSERT   INTO   CARD VALUES (15,'ʮ��','�İ�')
INSERT   INTO   CARD VALUES (16,'ʮ��','����')
INSERT   INTO   CARD VALUES (17,'ʮ��','�İ�')
INSERT   INTO   CARD VALUES (18,'ʮ��','����')
INSERT   INTO   CARD VALUES (19,'ʮ��','�İ�')
INSERT   INTO   CARD VALUES (20,'��ʮ','һ��')

SELECT *FROM BOOKS 
INSERT INTO BOOKS VALUES (1,'ˮ䰴�','ʩ����',25,60)
INSERT INTO BOOKS VALUES (2,'���μ�','��ж�',30,120)
INSERT INTO BOOKS VALUES (3,'����','�޹���',28,18)
INSERT INTO BOOKS VALUES (4,'��¥��','��ѩ��',35,30)
INSERT INTO BOOKS VALUES (5,'���������','ʩ����',50,125)
INSERT INTO BOOKS VALUES (6,'���簲ȫԭ��','A',67,105)
INSERT INTO BOOKS VALUES (7,'������+','B',22,10)
INSERT INTO BOOKS VALUES (8,'�����Ӳ��','C',80,5)
INSERT INTO BOOKS VALUES (9,'���ݿ�ԭ��','D',125,5)

SELECT *FROM BORROW 
DELETE  from BORROW  
INSERT  INTO BORROW VALUES (1,5,'2001-10-02')
INSERT  INTO BORROW VALUES (1,6,'2001-11-02')
INSERT  INTO BORROW VALUES (9,8,'2001-09-02')
INSERT  INTO BORROW VALUES (6,1,'2001-07-02')
INSERT  INTO BORROW VALUES (7,7,'2001-05-02')
INSERT  INTO BORROW VALUES (7,6,'2001-09-02')
INSERT  INTO BORROW VALUES (5,1,'2001-07-02')
INSERT  INTO BORROW VALUES (3,6,'2001-11-02')
INSERT  INTO BORROW VALUES (12,4,'2001-12-02')
INSERT  INTO BORROW VALUES (11,4,'2001-10-02')
INSERT  INTO BORROW VALUES (15,6,'2001-7-02')
INSERT  INTO BORROW VALUES (20,5,'2001-2-02')
INSERT  INTO BORROW VALUES (19,6,'2001-06-02')
INSERT  INTO BORROW VALUES (18,9,'2001-07-02')
INSERT  INTO BORROW VALUES (16,4,'2001-08-02')
INSERT  INTO BORROW VALUES (12,5,'2001-10-02')
INSERT  INTO BORROW VALUES (18,5,'2001-11-02')
INSERT  INTO BORROW VALUES (16,3,'2001-05-02')
INSERT  INTO BORROW VALUES (14,6,'2001-12-02')
INSERT  INTO BORROW VALUES (18,2,'2001-08-02')
INSERT  INTO BORROW VALUES (20,4,'2001-04-02')
INSERT  INTO BORROW VALUES (15,6,'2001-09-02')
INSERT  INTO BORROW VALUES (13,9,'2001-07-02')
INSERT  INTO BORROW VALUES (17,9,'2001-08-02')
INSERT  INTO BORROW VALUES (20,6,'2001-03-02')
INSERT  INTO BORROW VALUES (9,7,'2001-04-02')
INSERT  INTO BORROW VALUES (6,3,'2001-09-02')
INSERT  INTO BORROW VALUES (20,4,'2001-03-02')
INSERT  INTO BORROW VALUES (18,5,'2001-07-02')
INSERT  INTO BORROW VALUES (2,4,'2001-05-02')

--1.	��ѯ��������"ԭ��"�ؼ��ʵ�ͼ�飬�����š����������ߡ�
SELECT a.bno ,a.bname ,a.author 
from BOOKS a INNER JOIN BORROW s ON a.bno =s.bno 
		INNER JOIN CARD c ON s.cno =c.CNO 
		AND a.bname LIKE '%ԭ��%'


--2.	��ѯ���ƽ���۸� 
SELECT AVG(a.Price )  
from  BOOKS a


--3.	������������Ȿ��Ŀ��������Ϊ20�����۸�Ϊ13.1
SELECT *FROM BOOKS 
UPDATE BOOKS SET    quantity =20 WHERE  bname  ='���������' 
UPDATE BOOKS SET    Price =13.1 WHERE  bname  ='���������'
--5.	��ѯ�ı��鱻��Ĵ�����࣬��������ʹ���
--6.	��ѯ�������ֱ������Щ��
--7.	��ѯ�������ŵ��飬������Щ���߽��ģ�������������ߡ�����
--8.	��ѯ����ͼ���м۸���ߵ�ͼ�飬������������ߡ�
--9.	��ѯ��ǰ����"����"��û�н�"������+"�Ķ��ߣ��������鿨�ţ��������Ž������������
--10.	��ѯ��ǰͬʱ����"������+"��"���簲ȫԭ��"������Ķ��ߣ��������鿨�ţ����������������������
--11.	�ҳ����鳬��5���Ķ���,������鿨�ż�����ͼ�������
--12.	��ѯ������"ˮ䰴�"һ��Ķ��ߣ�����������༶��
--13.	��ѯ����(��2017-12-30����30��)δ��ͼ�飬��������ߣ����ţ�����ż��������ڡ�








