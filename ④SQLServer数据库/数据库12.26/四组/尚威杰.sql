SELECT *FROM CARD 

SELECT * FROM BOOKS

SELECT * FROM BORROW

--1.��ѯ��������"ԭ��"�ؼ��ʵ�ͼ�飬�����š����������ߡ�
SELECT a.bno,a.bname,a.author
from BOOKS a
where a.bname LIKE '%ԭ��%'
--2.	��ѯ���ƽ���۸�
SELECT AVG(a.Price) 
from BOOKS a
--3.������������Ȿ��Ŀ��������Ϊ20�����۸�Ϊ13.1
 UPDATE BOOKS SET quantity ='30',Price ='13.1'
 WHERE bname ='���������'
--4.��ѯ������Ŀ��һ���ж���
SELECT SUM(b.quantity) 
from BOOKS b 
--5.��ѯ�ı��鱻��Ĵ�����࣬��������ʹ���
SELECT MAX(b.bname),COUNT(*) 
from BOOKS b INNER JOIN BORROW c 
ON b.bno=c.bno
--6.	��ѯ�������ֱ������Щ��
SELECT a.bname
from CARD c INNER JOIN BORROW r
ON c.Cno=r.cno
INNER JOIN BOOKS a	
ON a.bno=r.bno
AND c.Name='������'
--7.	��ѯ�������ŵ��飬������Щ���߽�b�ģ�������������ߡ�����
SELECT a.bname,a.author,c.Name
from CARD c INNER JOIN BORROW r
ON c.Cno=r.cno
INNER JOIN BOOKS a	
ON a.bno=r.bno 
WHERE a.author LIKE '��%'
--8.	��ѯ����ͼ���м۸���ߵ�ͼ�飬������������ߡ�
SELECT TOP 1 a.bname,a.author
from BOOKS a
GROUP BY a.Price,a.bname,a.author
ORDER BY a.Price DESC 
--9.	��ѯ��ǰ����"����"��û�н�"������+"�Ķ��ߣ��������鿨�ţ��������Ž������������
