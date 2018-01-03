SELECT * FROM goods
SELECT * FROM indetail
SELECT * FROM outdetail
SELECT * FROM dept

--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 a.gname,a.price
from goods a
ORDER BY a.price DESC

--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT a.gname , COUNT(*) ,SUM(a.price)
from goods a INNER JOIN indetail b on a.gid = b.gid
GROUP BY a.gname ,a.price

--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1*
from indetail b
WHERE b.month ='2017��5��'
ORDER BY b.inamt DESC 

--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT COUNT(g.price)
from dept d INNER JOIN indetail i ON d.deptno=i.gid
INNER JOIN goods g ON d.deptno = g.gid
AND i.month ='2017��6��'


--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 *
from outdetail a
where a.month='2017��6��'
ORDER BY a.outamt DESC


