--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 g.gname,g.price
from goods g
ORDER BY g.price DESC
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT g.gname ,COUNT(*),SUM(g.price) 
from goods g INNER JOIN indetail i
on g.gid=i.gid
GROUP BY g.gname,g.price
SELECT *FROM indetail
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 g.gname,i.inamt
from indetail i INNER JOIN goods g
ON i.gid=g.gid
WHERE i.month='2017��5��'
ORDER BY i.inamt DESC
--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT g.gname,SUM(o.outamt*g.price) AS'�ܽ��'
from goods g INNER JOIN outdetail o
ON g.gid=o.gid
AND o.month='2017��6��'
GROUP BY g.gname
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
 SELECT TOP 1 g.gname ,o.outamt
 from goods g INNER JOIN outdetail o
ON g.gid=o.gid
AND o.month='2017��6��'
ORDER BY o.outamt DESC
--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE indetail SET inamt=inamt+10 WHERE month='2017��5��' and gid=(SELECT gid FROM goods WHERE spec='500g' AND gname='����')

--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM outdetail WHERE month='2017��5��' AND deptno=(SELECT deptno from dept WHERE dname='�豸��')
--8.	��ѯÿ�����Ų�ѯ�������õ��ĸ���Ʒ���

 
 


