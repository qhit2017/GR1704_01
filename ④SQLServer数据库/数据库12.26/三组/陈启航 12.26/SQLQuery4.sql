SELECT  *FROM ���鿨��

SELECT *FROM ͼ���

SELECT *FROM �����¼��


--1.	��ѯ��������"ԭ��"�ؼ��ʵ�ͼ�飬�����š����������ߡ�
SELECT a.bno,a.bname,a.author
from ͼ��� a
WHERE a.bname LIKE '%ԭ��%'
--2.	��ѯ���ƽ���۸�  
SELECT AVg (b.price)
from ͼ��� b
--3.	������������Ȿ��Ŀ��������Ϊ20�����۸�Ϊ13.1
UPDATE ͼ��� SET quantity='20' ,price='13.1'WHERE bname='���������'
--4.	��ѯ������Ŀ��һ���ж��� 
SELECT SUM(t.quantity) 
from ͼ��� t
--5.	��ѯ�ı��鱻��Ĵ�����࣬��������ʹ���
SELECT MAX(p.bname) ,COUNT(*) 
from  ͼ��� p INNER JOIN �����¼�� e
ON p.bno=e.bno
