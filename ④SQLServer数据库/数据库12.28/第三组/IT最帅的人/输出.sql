SELECT *from outdetail --as ' �����'
SELECT *from dept --as '���ű�'
SELECT *from goods --as '��Ʒ�� '
SELECT *from indetail-- as '����'


--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 a.gname, a.price 
from goods a
ORDER BY  a.price,a.gname
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT i.inamt-o.outamt as'��ǰ���' ,SUM((i.inamt-o.outamt)*g.price)
from goods g INNER JOIN indetail i ON g.gid=i.gid
  INNER JOIN outdetail o on g.gid =o.gid
  GROUP BY g.gid ,i.inamt-o.outamt
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT  MAX(i.inamt) 
from goods g INNER JOIN indetail  i ON g.gid =i.gid
  INNER JOIN outdetail o ON g.gid=o.gid
  AND i.month='2017��5��'
SELECT g.gname 
from indetail  i  INNER JOIN  goods g ON g.gid =i.gid
WHERE i.inamt in (SELECT  MAX(i.inamt) 
from goods g INNER JOIN indetail  i ON g.gid =i.gid
  INNER JOIN outdetail o ON g.gid=o.gid
  AND i.month='2017��5��')
--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT  SUM(I.inamt *G.price) 
from goods g INNER JOIN indetail  i ON g.gid =i.gid
  INNER JOIN outdetail o ON g.gid=o.gid
  INNER JOIN dept d ON o.deptno=d.deptno 
  and i.month ='2017��6��'
 GROUP BY  I.inamt *G.price
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT  MAX(o.outamt ) 
FROM goods g INNER JOIN outdetail o ON g.gid =o.gid 
    AND o.month='2017��6��'
    
    SELECT g.gname,o.outamt   
    from outdetail o INNER JOIN goods g ON g.gid =o.gid 
    where o.outamt IN (SELECT  MAX(o.outamt ) 
FROM goods g INNER JOIN outdetail o ON g.gid =o.gid 
    AND o.month='2017��6��')
--6.	���±���500g�Ĺ��ӣ�5�·������������10
SELECT *
from goods g INNER JOIN indetail i on g.gid =i.gid 
and g.gname ='����'
AND I.month ='2017��5��'
and g.spec ='500'

--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
--9.	��ѯ�������õ��ĸ���Ʒ���
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 
