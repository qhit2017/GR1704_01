--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 g.price,g.gname
from goods g 
ORDER BY g.price DESC
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT g.gid , SUM(g.price),SUM(i.inamt) ,SUM(g.price)*SUM(i.inamt) as '�ܽ��'
from goods g INNER JOIN indetail i ON g.gid = i.gid
GROUP BY g.gid
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1i.month,g.gname
from indetail i INNER JOIN goods g ON g.gid = i.gid
WHERE i.month = '2017��5��'
ORDER BY i.inamt DESC
--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT  SUM(o.outamt)*SUM(g.price) AS '�ܽ��',d.dname,g.gname
from outdetail o INNER JOIN goods g ON o.gid =g.gid
INNER JOIN dept d ON d.deptno = o.deptno
AND o.mouth = '2017��6��'
GROUP BY g.gname,d.dname
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 o.outamt ,g.gname
from outdetail o  INNER JOIN goods g ON g.gid = o.gid
AND o.mouth ='2017��6��'
ORDER BY o.outamt DESC 

--6.	���±���500g�Ĺ��ӣ�5�·������������10


--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE 

--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
--9.	��ѯ�������õ��ĸ���Ʒ���
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 
