SELECT *FROM goods -- ��Ʒ�� 
SELECT *FROM dept --���ű� 
SELECT *FROM indetail --���� 
SELECT *FROM outdetail  --����� 


--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
 SELECT TOP 1 A.gname,MAX(A.price) 
 FROM goods A
 GROUP BY A.gname 
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT g.gname ,COUNT(*),SUM(g.price )  
FROM goods g INNER JOIN indetail i ON g.gid = i.gid 
GROUP BY g.gname ,g.price 
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 G.gname ,I.inamt  
FROM indetail I INNER JOIN goods G ON I.gid = G.gid   
WHERE  I.month ='2017��5��'
ORDER BY I.inamt  DESC 
--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���

--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������

--6.	���±���500g�Ĺ��ӣ�5�·������������10

--7.	���豸��2017��5�·� �ĳ����¼��ɾ��

--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���

--9.	��ѯ�������õ��ĸ���Ʒ���

--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��

--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������

--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�

--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 

