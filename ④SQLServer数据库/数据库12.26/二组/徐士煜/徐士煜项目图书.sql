--    һ
SELECT * FROM card
SELECT * FROM books
SELECT * FROM borrow

--    ��
--card
INSERT INTO card VALUES(1,'��ʿ��','�İ�')
INSERT INTO card VALUES(2,'��һ��','�İ�')
INSERT INTO card VALUES(3,'�����','�İ�')
INSERT INTO card VALUES(4,'������','�İ�')
INSERT INTO card VALUES(5,'������','�İ�')
INSERT INTO card VALUES(6,'������','�İ�')
INSERT INTO card VALUES(7,'������','�İ�')
INSERT INTO card VALUES(8,'������','�İ�')
INSERT INTO card VALUES(9,'�����','�İ�')
INSERT INTO card VALUES(10,'�����','�İ�')
INSERT INTO card VALUES(11,'��ʮ��','�İ�')
INSERT INTO card VALUES(12,'��ʿһ','�Ű�')
INSERT INTO card VALUES(13,'��ʿ��','�Ű�')
INSERT INTO card VALUES(14,'��ʿ��','�Ű�')
INSERT INTO card VALUES(15,'��ʿ��','�Ű�')
INSERT INTO card VALUES(16,'��ʿ��','�Ű�')
INSERT INTO card VALUES(17,'��ʿ��','�Ű�')
INSERT INTO card VALUES(18,'��ʿ��','�Ű�')
INSERT INTO card VALUES(19,'��ʿ��','�Ű�')
INSERT INTO card VALUES(20,'��ʿ��','�Ű�')

--books
INSERT INTO books VALUES(1,'ˮ䰴�','��',50,20)
INSERT INTO books VALUES(2,'���μ�','��',50,20)
INSERT INTO books VALUES(3,'����','��',50,20)
INSERT INTO books VALUES(4,'��¥��','��',50,20)
INSERT INTO books VALUES(5,'���������','һ',50,20)
INSERT INTO books VALUES(6,'���簲ȫԭ��','��',50,20)
INSERT INTO books VALUES(7,'������+','��',50,20)
INSERT INTO books VALUES(8,'�����Ӳ��','��',50,20)
INSERT INTO books VALUES(9,'���ݿ�ԭ��','��',50,20)

--borrow
INSERT INTO borrow VALUES(1,1,'2000-1-1')
INSERT INTO borrow VALUES(1,2,'2000-1-1')
INSERT INTO borrow VALUES(1,3,'2000-1-1')
INSERT INTO borrow VALUES(1,3,'2000-1-1')
INSERT INTO borrow VALUES(1,4,'2000-1-1')
INSERT INTO borrow VALUES(1,5,'2000-1-1')
INSERT INTO borrow VALUES(1,6,'2000-1-1')
INSERT INTO borrow VALUES(1,7,'2000-1-1')
INSERT INTO borrow VALUES(1,8,'2000-1-1')
INSERT INTO borrow VALUES(1,9,'2000-1-1')
INSERT INTO borrow VALUES(1,10,'2000-1-1')
INSERT INTO borrow VALUES(1,11,'2000-1-1')
INSERT INTO borrow VALUES(1,12,'2000-1-1')
INSERT INTO borrow VALUES(1,13,'2000-1-1')
INSERT INTO borrow VALUES(1,14,'2000-1-1')
INSERT INTO borrow VALUES(1,15,'2000-1-1')
INSERT INTO borrow VALUES(1,16,'2000-1-1')
INSERT INTO borrow VALUES(1,17,'2000-1-1')
INSERT INTO borrow VALUES(1,18,'2000-1-1')
INSERT INTO borrow VALUES(1,19,'2000-1-1')
INSERT INTO borrow VALUES(2,1,'2000-1-2')
INSERT INTO borrow VALUES(2,2,'2000-1-2')
INSERT INTO borrow VALUES(2,3,'2000-1-2')
INSERT INTO borrow VALUES(2,4,'2000-1-2')
INSERT INTO borrow VALUES(2,5,'2000-1-2')
INSERT INTO borrow VALUES(2,6,'2000-1-2')
INSERT INTO borrow VALUES(2,7,'2000-1-2')
INSERT INTO borrow VALUES(2,8,'2000-1-2')
INSERT INTO borrow VALUES(2,9,'2000-1-2')
INSERT INTO borrow VALUES(2,10,'2000-1-2')
INSERT INTO borrow VALUES(2,11,'2000-1-2')
INSERT INTO borrow VALUES(3,1,'2000-1-3')
INSERT INTO borrow VALUES(3,2,'2000-1-4')
INSERT INTO borrow VALUES(3,3,'2000-1-5')
INSERT INTO borrow VALUES(3,4,'2000-1-6')
INSERT INTO borrow VALUES(3,5,'2000-1-7')

--   ��
--1.	��ѯ��������"ԭ��"�ؼ��ʵ�ͼ�飬�����š����������ߡ�
SELECT a.bno,a.bname,a.author
from books a
WHERE a.bname LIKE '%ԭ��%'
--2.	��ѯ���ƽ���۸�  
SELECT AVG(b.Price)
from books b
--3.	������������Ȿ��Ŀ��������Ϊ20�����۸�Ϊ13.1
UPDATE books SET quantity=30,Price=13.1
WHERE bname='���������'
--4.	��ѯ������Ŀ��һ���ж��� 
SELECT sum(c.quantity)
FROM books c
--5.	��ѯ�ı��鱻��Ĵ�����࣬��������ʹ���
SELECT MAX(b.bname),COUNT(*)
FROM books b INNER JOIN borrow r
ON b.bno=r.bno
--6.	��ѯ�������ֱ������Щ��
SELECT b.bname
from borrow r INNER JOIN card c
ON c.Cno=r.cno INNER JOIN books b
ON b.bno=r.bno
WHERE c.Name='����'
--7.	��ѯ�������ŵ��飬������Щ���߽��ģ�������������ߡ�����
SELECT c.Name,b.bname,b.author
from borrow r INNER JOIN card c
ON c.Cno=r.cno INNER JOIN books b
ON b.bno=r.bno
WHERE b.author LIKE '��%'
--8.	��ѯ����ͼ���м۸���ߵ�ͼ�飬������������ߡ�
SELECT MAX(b.Price)
from borrow r INNER JOIN card c
ON c.Cno=r.cno INNER JOIN books b
ON b.bno=r.bno

SELECT b.bname,b.author
from borrow r INNER JOIN card c
ON c.Cno=r.cno INNER JOIN books b
ON b.bno=r.bno
WHERE b.Price=(SELECT MAX(b.Price)
from borrow r INNER JOIN card c
ON c.Cno=r.cno INNER JOIN books b
ON b.bno=r.bno)
--9.	��ѯ��ǰ����"����"��û�н�"������+"�Ķ��ߣ��������鿨�ţ��������Ž������������
--10.	��ѯ��ǰͬʱ����"������+"��"���簲ȫԭ��"������Ķ��ߣ��������鿨�ţ����������������������
--11.	�ҳ����鳬��5���Ķ���,������鿨�ż�����ͼ�������
--12.	��ѯ������"ˮ䰴�"һ��Ķ��ߣ�����������༶��
--13.	��ѯ����(��2017-12-30����30��)δ��ͼ�飬��������ߣ����ţ�����ż��������ڡ�

