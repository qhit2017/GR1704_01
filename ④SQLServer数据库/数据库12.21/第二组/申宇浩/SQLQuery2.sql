--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT AVG(a.CJ)
from zy333 a
--3.	�������гɼ���ѧ����ѧ�ź�������
SELECT c.CJ,c.XH,c.XM
from zy333 c
--5.	��ѯѧ����������
SELECT COUNT(*)
from zy333 b
--6.	��ѯ������Ů����������
SELECT COUNT(d.XB)
from zy333 d
--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
SELECT e.ZY,AVG(e.CJ)as 'ƽ����'
from zy333 e
group by e.CJ 
order by e.CJ desc
