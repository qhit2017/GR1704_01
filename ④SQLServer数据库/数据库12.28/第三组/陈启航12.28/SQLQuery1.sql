SELECT *FROM goods

SELECT *from indetail 

SELECT *from outdetail 

SELECT *FROM  dept 
--1.��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 p.gname,p.price
from goods p
ORDER BY p.price DESC 
--2.��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT i.inamt,i.inamt*g.price
from goods g INNER JOIN indetail i ON g.gid=g.gid
--3.��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 g.gname as'��Ʒ����' ,i.inamt as'�������'
from goods g INNER JOIN indetail i ON g.gid=g.gid
--4.��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
--5.��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 g.gname 
from goods g INNER JOIN indetail  i ON i.gid =i.gid 
AND i.month ='2017��6��'
ORDER BY i.inamt DESC 

--6.���±���500g�Ĺ��ӣ�5�·������������10
--7.���豸��2017��5�·� �ĳ����¼��ɾ��
--8.��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
--9.��ѯ�������õ��ĸ���Ʒ���
--10.��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
--11.��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
--12.��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
--13.��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 