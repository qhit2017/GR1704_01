SELECT * FROM goods
SELECT * FROM indetail
SELECT * FROM outdetail 
SELECT * FROM dept

--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 g.gname,g.price 
from goods g
ORDER BY g.price DESC
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT g.gname,COUNT(*),sum(g.price) 
from goods g INNER JOIN indetail i ON g.gid=i.gid
INNER JOIN outdetail o ON o.gid=g.gid AND g.gid=i.gid
GROUP BY g.gname,g.price,i.month,o.month



--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT g.gname
from indetail i INNER JOIN goods g ON g.gid=i.gid
where i.inamt=(
SELECT MAX(i.inamt)
from indetail i
where i.month='2017��5��')

--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.dname ,SUM(g.price)
from goods g INNER JOIN outdetail o ON g.gid=o.gid
INNER JOIN dept d ON d.deptno=o.deptno
AND o.month='2017��6��'
GROUP BY d.dname

--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 g.gname 
from goods g INNER JOIN outdetail o ON g.gid=o.gid
AND o.month='2017��6��'
ORDER BY o.outamt DESC 

--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE indetail  SET inamt=inamt+10 where month='2017��5��' and gid=7 

--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE  from outdetail 
where gid IN (SELECT o.gid
from dept d INNER JOIN outdetail o ON d.deptno=o.deptno
WHERE d.dname='�豸��' and o.month='2017��5��')




--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
--9.	��ѯ�������õ��ĸ���Ʒ���
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 
