--1.	��ѯ��������"ԭ��"�ؼ��ʵ�ͼ�飬�����š����������ߡ�
SELECT A.bno ,A.bname ,A.author 
FROM BOOKS A
WHERE A.bname LIKE '%ԭ��%'
--2.	��ѯ���ƽ���۸� 
SELECT AVG(b.Price ) 
from BOOKS b 
--3.	������������Ȿ��Ŀ��������Ϊ20�����۸�Ϊ13.1
UPDATE BOOKS SET quantity =20, Price =13.1
WHERE bname ='���������'
--4.	��ѯ������Ŀ��һ���ж��� 
SELECT SUM(S.quantity ) 
FROM BOOKS S

