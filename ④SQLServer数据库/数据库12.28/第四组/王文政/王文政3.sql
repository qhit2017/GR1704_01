SELECT * FROM goods
SELECT * FROM dept
SELECT * from indetail
SELECT * FROM outdetail

--1.��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 g.gname, MAX(g.price)
from goods g
GROUP BY g.gname


--2.��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���

SELECT i.inamt as'�������',g.gid*i.inamt as'�ܽ��'
from goods g INNER JOIN indetail i
ON g.gid=i.gid

--3.��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 * 
from indetail i INNER JOIN goods g
on i.gid=g.gid
WHERE i.month='2017��5��'
ORDER BY i.inamt DESC 
--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.deptno,SUM(o.outamt*g.price)as'�ܽ��',g.gname
from  outdetail o INNER JOIN dept d
ON o.deptno=d.deptno
INNER JOIN goods g
on o.gid=g.gid
INNER JOIN indetail i
on g.gid=i.gid
AND o.month='2017��6��'
GROUP BY d.deptno,g.gname
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 MAX(o.outamt),g.gname
from outdetail o INNER JOIN goods g
ON o.gid=g.gid
AND o.month='2017��6��'
GROUP BY g.gname
--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE indetail SET inamt=inamt+10
WHERE inid=(select i.inid
from indetail i INNER JOIN goods g
ON i.gid=g.gid
WHERE g.spec='500g' AND i.month='2017��5��')

--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM outdetail
WHERE outid in(SELECT o.outid
from outdetail o INNER JOIN dept d
ON o.deptno=d.deptno
WHERE d.dname='�豸��'AND month='2017��5��')

--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.deptno,SUM(o.outamt*g.price)as'�ܽ��',g.gname,o.month
from  outdetail o INNER JOIN dept d
ON o.deptno=d.deptno
INNER JOIN goods g
on o.gid=g.gid
INNER JOIN indetail i
on g.gid=i.gid
GROUP BY d.deptno,g.gname,o.month
--9.	��ѯ�������õ��ĸ���Ʒ���
SELECT TOP 1 g.gid,g.gname,g.spec,SUM(o.outamt)
from goods g INNER JOIN outdetail o
on g.gid=o.gid
INNER JOIN dept d
ON o.deptno=d.deptno
AND d.dname='����'
GROUP BY g.gid,g.gname,g.spec
ORDER BY SUM(o.outamt)DESC 
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 


