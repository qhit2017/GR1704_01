--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 b.gname,b.price
from goods b
ORDER BY b.price DESC
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT SUM(s.price) 
FROM goods s INNER JOIN indetail i ON s.gid =i.gid
INNER JOIN outdetail j ON j.gid = i.gid
GROUP BY s.gname

SELECT a.inamt- (SELECT b.outamt
FROM outdetail b)
FROM indetail a

SELECT b.outamt
FROM outdetail b

--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT MAX(s.gname) AS '��Ʒ����'
FROM indetail a INNER JOIN goods s ON a.gid=s.gid
WHERE a.month='2017��5��'

--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT SUM(a.price)
FROM outdetail s INNER JOIN goods a ON s.gid = a.gid
WHERE s.month='2017��6��'
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT  Min(a.gname) 
FROM outdetail s INNER JOIN goods a ON s.gid=a.gid
WHERE s.month ='2017��6��'


