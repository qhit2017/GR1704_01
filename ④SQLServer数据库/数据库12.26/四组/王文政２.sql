--1.	��ѯ��������"ԭ��"�ؼ��ʵ�ͼ�飬�����š����������ߡ�
SELECT a.bno,a.bname,a.author
from books a
WHERE a.bname LIKE '%ԭ��%'
--2.	��ѯ���ƽ���۸�  
SELECT AVG(b.price) as'ƽ���۸�'
from books b

--3.������������Ȿ��Ŀ��������Ϊ20�����۸�Ϊ13.1
update books SET quantity =20
WHERE bname='���������'

UPDATE books SET price=13.1
where bname='���������'

SELECT * from books

--4.��ѯ������Ŀ��һ���ж��� 
SELECT SUM(c.quantity)
from books  c

--5.��ѯ�ı��鱻��Ĵ�����࣬��������ʹ���
SELECT MAX(d.bname),count(*)
from books d INNER JOIN borrow e
on d.bno=e.bno

--6.��ѯ�������ֱ������Щ��
SELECT h.bname,f.name
from card f INNER JOIN  borrow g ON f.cno=g.cno
INNER JOIN books h
on h.bno=h.bno
AND f.name='������'

--7.��ѯ�������ŵ��飬������Щ���߽��ģ�������������ߡ�����
SELECT h.bname,h.author,f.name
from card f INNER JOIN  borrow g ON f.cno=g.cno
INNER JOIN books h
on h.bno=h.bno
AND h.author like'��%'
--8.��ѯ����ͼ���м۸���ߵ�ͼ�飬������������ߡ�
--9.	��ѯ��ǰ����"����"��û�н�"������+"�Ķ��ߣ��������鿨�ţ��������Ž����������������
--10.	��ѯ��ǰͬʱ����"������+"��"���簲ȫԭ��"������Ķ��ߣ��������鿨�ţ����������������������
--11.	�ҳ����鳬��5���Ķ���,������鿨�ż�����ͼ�������
--12.	��ѯ������"ˮ䰴�"һ��Ķ��ߣ�����������༶��
--13.	��ѯ����(��2017-12-30����30��)δ��ͼ�飬��������ߣ����ţ�����ż��������ڡ�
