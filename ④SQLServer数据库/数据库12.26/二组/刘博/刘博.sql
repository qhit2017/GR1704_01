SELECT * FROM [ͼ���];
SELECT * FROM ���鿨��;
SELECT * FROM �����¼��;
--1.	��ѯ��������"ԭ��"�ؼ��ʵ�ͼ�飬�����š����������ߡ�
SELECT t.bno, t.bname, t.author 
from [ͼ���] t
WHERE t.bname='���μ�'

--2.	��ѯ���ƽ���۸�
SELECT AVG( q.Price)AS'�۸�' 
from [ͼ���] q

--3.	������������Ȿ��Ŀ��������Ϊ20�����۸�Ϊ13.1
UPDATE [ͼ���] SET quantity='20', price='13.1'WHERE bname ='���������'   

--4.	��ѯ������Ŀ��һ���ж���
SELECT SUM (w.quantity )AS'�������'
from [ͼ���] w 

--6.	��ѯ�������ֱ������Щ��
SELECT r.bname 
from [ͼ���]r INNER JOIN �����¼�� y 
ON  r.bno=y.bno
AND r.bname ='�ŷ�'


