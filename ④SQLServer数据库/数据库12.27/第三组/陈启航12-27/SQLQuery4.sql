SELECT *FROM ѧ���� 

SELECT  *FROM �γ̱�

SELECT *FROM ѧ��ѡ�α�

--1����ѯȫ��ѧ����ѧ����������
SELECT a.sno,a.sname
from ѧ���� a

--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT w.sname,w.sno,w.sdept
from ѧ���� w

--3����ȫ��ѧ�����������������ݡ�
SELECT e.sname(2015-e.sage) 
from ѧ���� e 

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT r.sno
from ѧ��ѡ�α� r
WHERE r.cno IN NOT  NULL

--5����ѯ�������ѧϵȫ��ѧ����������
SELECT *
from ѧ���� 
WHERE sdept='as'

--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT t.sname,t.sage
from ѧ���� t
WHERE  t.sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT crade
from ѧ��ѡ�α�
WHERE   crade<60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT y.sname,y.sdept,y.sage
from ѧ���� y
WHERE y.sage BETWEEN 18 AND 22
--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT u.sname,u.sdept,u.sage
from ѧ���� u
WHERE u.sage NOT BETWEEN 18 AND 22
--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT i.sname ,i.ssex 
from ѧ���� i
WHERE i.sdept IN ('cs','ml','xc')

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT p.sname ,p.sage
from ѧ���� p
WHERE p.sdept NOT IN ('tr','yu','zn')


