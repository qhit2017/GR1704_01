--1.��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 a.gname,a.price
from goods a
ORDER BY a.price DESC 
--2.��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���

--3.��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 a.month,g.gname, MAX(a.inamt) 
from indetail a INNER JOIN goods g ON a.gid= g.gid
WHERE a.month='2017��5��' 
GROUP BY a.month,g.gname

--4.��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT TOP 1  a.gid,g.gname, MAX(a.inamt) 
from indetail a INNER JOIN goods g ON a.gid=g.gid
GROUP BY a.gid,g.gname
ORDER BY a.gid DESC 
--5.��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 a.gid,g.gname, MAX(outamt) 
from outdetail a INNER JOIN goods g ON a.gid=g.gid
GROUP BY a.gid,g.gname 
ORDER BY  MAX(outamt)DESC 
--6.���±���500g�Ĺ��ӣ�5�·������������10
--7.���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE from outdetail WHERE month='2017��5��'

