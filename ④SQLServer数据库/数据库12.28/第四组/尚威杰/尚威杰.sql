--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT top 1 a.gname,a.price 
from goods a
ORDER BY a.price DESC
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT a.gname,COUNT(*),SUM(a.price)  
from goods a INNER JOIN indetail b
ON a.gid=b.gid
GROUP BY a.gname,a.price
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 b.gname,a.inamt
from indetail a INNER JOIN goods b
on a.gid = b.gid 
WHERE a.month='2017��5��'
ORDER BY a.inamt DESC 
--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT b.deptno ,SUM(b.outid)*a.price  
from goods a INNER JOIN outdetail b
ON a.gid =b.gid
AND b.month='2017��6��'
GROUP BY b.deptno ,a.price 
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 a.gname ,b.outid 
from goods a INNER JOIN outdetail b
ON a.gid =b.gid 
AND b.month ='2017��6��'
ORDER BY b.outid DESC 
--6.	���±���500g�Ĺ��ӣ�5�·������������10
--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
--9.	��ѯ�������õ��ĸ���Ʒ���
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 
