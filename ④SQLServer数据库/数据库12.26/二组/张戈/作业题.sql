SELECT * from CARD  --���鿨��
SELECT * from BOOKS  --ͼ���
SELECT * from BORROW  --�����¼��

--1.	��ѯ��������"ԭ��"�ؼ��ʵ�ͼ�飬�����š����������ߡ�
SELECT *
from BOOKS a
where a.bname LIKE '%ԭ��%'

--2.	��ѯ���ƽ���۸�  
SELECT AVG(b.Price)
from BOOKS b

--3.	������������Ȿ��Ŀ��������Ϊ20�����۸�Ϊ13.1
UPDATE BOOKS SET quantity=20,Price=13.1
WHERE bname='���������' 

--4.	��ѯ������Ŀ��һ���ж��� 
SELECT SUM(c.quantity)
from BOOKS c

--5.	��ѯ�ı��鱻��Ĵ�����࣬��������ʹ���
SELECT Max(k.bname),COUNT(*)
from BORROW b INNER JOIN BOOKS k ON k.bno=b.bno
 
 SELECT b.bno
 from BORROW b 
 where b.cno=(SELECT Max(b.cno)
from BORROW b INNER JOIN BOOKS k ON k.bno=b.bno)
 
 SELECT TOP 1 b.bname
 from BOOKS b ,CARD c,BORROW k
 WHERE b.bno=( SELECT b.bno
 from BORROW b 
 WHERE b.cno=(SELECT Max(b.cno)
from CARD c INNER JOIN BORROW b ON c.Cno=b.cno
 INNER JOIN BOOKS k ON k.bno=b.bno))
 
 


--6.	��ѯ�������ֱ������Щ��
--7.	��ѯ�������ŵ��飬������Щ���߽��ģ�������������ߡ�����
--8.	��ѯ����ͼ���м۸���ߵ�ͼ�飬������������ߡ�
