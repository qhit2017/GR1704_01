--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 a.gname
from goods a
ORDER BY a.price DESC 



--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT s.gname, SUM(s.price) 
from   indetail a  INNER JOIN goods s ON a.gid=s.gid
GROUP BY s.gname



--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 s.gname
from indetail a INNER JOIN goods s ON a.gid=s.gid
where a.month='2017��5��'
ORDER BY a.inamt DESC 










--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT SUM(s.price)
from outdetail a INNER JOIN goods s ON a.gid=s.gid
where a.month='2017��6��'
GROUP BY a.deptno



--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 s.gname
from outdetail a INNER JOIN goods s ON a.gid=s.gid
WHERE a.month='2017��6��'
ORDER BY a.outamt DESC





--6.	���±���500g�Ĺ��ӣ�5�·������������10



7.	���豸��2017��5�·� �ĳ����¼��ɾ��
