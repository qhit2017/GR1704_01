--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 q.gname,q.price
from goods q
 ORDER BY q.price DESC 
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT i.imamt,i.imamt*g.price
from goods g INNER JOIN indetail i ON g.gid=i.gid
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 g.gname as '��Ʒ����',i.imamt as '�������'
from goods g INNER JOIN indetail i ON g.gid=i.gid
 AND i.month='2017��5��'
 ORDER BY i.imamt DESC 
--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���

--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 g.gname
from goods g INNER JOIN indetail i ON i.gid=g.gid
 AND i.month='2017��6��'
 ORDER BY i.imamt DESC
--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE indetail SET imamt=imamt+10 
WHERE month='2017��5��'AND gid=(SELECT gid FROM goods WHERE spec='500g'AND gname='����')
--7.	���豸��2017��5�·� �ĳ����¼��ɾ��

DELETE FROM outdetail WHERE outamt=(SELECT o.outamt
from outdetail o INNER JOIN dept d ON d.deptno= o.deptno
AND d.dname='�豸��'AND o.month='2017��5��')
SELECT *FROM dept
SELECT* FROM outdetail
--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���

--9.	��ѯ�������õ��ĸ���Ʒ���
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 
SELECT
from goods g
WHERE g.price<10
