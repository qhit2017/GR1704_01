SELECT *from ��Ʒ�� 
SELECT * FROM ���ű�
SELECT *FROM ����
SELECT *FROM �����

--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT  TOP 1 q.gname,q.price
from ��Ʒ�� q
ORDER BY q.gname,q.price DESC

--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT  S.gname,S.SPEC,SUM(s.price)
from ��Ʒ�� s INNER JOIN ���� r ON s.gid=r.gid 
 INNER JOIN ����� f ON s.gid=f.gid
 GROUP BY s.gname,s.spec
 
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT MAX(W.gname) 
from ��Ʒ�� w INNER JOIN ���� r ON w.gid=r.gid
WHERE r.month='2017��5��' 

--4-.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���


--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT  TOP 1 s.gname 
from ��Ʒ�� s INNER JOIN ����� h ON s.gid=h.gid
WHERE h.month='2017��6��'
ORDER BY h.outamt DESC


 