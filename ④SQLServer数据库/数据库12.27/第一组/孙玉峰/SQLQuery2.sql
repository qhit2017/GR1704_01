--1����ѯȫ��ѧ����ѧ����������
select a.sno,a.sname
from Student a

--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
select b.sno,b.sname,b.sdept
from Student b
--3����ȫ��ѧ�����������������ݡ�
select *,2017-sage
from Student

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
select c.sno
from sc c
where c.cno is not null

--5����ѯ�������ѧϵȫ��ѧ����������
select *
from Student d
where d.sdept='cs'
--6����ѯ����������20�����µ�ѧ�������������䡣
select e.sname,e.sage
from Student e
where e.sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
select f.sno
from sc f
where f.grade<60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
select g.sname,g.sdept,g.sage
from Student g
where g.sage>=18and g.sage<=22
--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
select g.sname,g.sdept,g.sage
from Student g
where g.sage<20 or g.sage>23
--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
select h.sname,h.ssex,h.sdept
from Student h
where h.sdept in('is','ma','cs')

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
select i.sname,i.ssex,i.sdept
from Student i
where i.sdept not in  ('is','ma','cs')

--12����ѯѧ��Ϊ200215136��ѧ������ϸ�����
select *
from Student j
where j.sno='200215136'

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
select k.sname,k.sno,k.ssex
from Student k
where k.sname like '��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
select k.sname
from Student k
where k.sname like '��__'

--15����ѯ�����е�2����Ϊ���ӡ��ֵ�ѧ����������ѧ�š�
select l.sname,l.sno
from Student l
where l.sname like'_��_'