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
where f.greade<60

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

--16����ѯ���в��ա��¡���ѧ��������
select m.sname
from Student m
where m.sname not like '��%'

--17����ѯ'��Ϣϵͳ'�γ̵Ŀγ̺ź�ѧ�֡�
select n.cno,n.ccredit
from Course n
where n.cname='��Ϣϵͳ'

--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
select o.cno
from sc o
where o.greade is null
--19���������гɼ���ѧ��ѧ�źͿγ̺š�
select p.sno,p.cno
from sc p
where p.greade is not null

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
select q.sno,q.greade
from sc q
where q.cno=3
order by q.greade desc
--21����ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
select *
from Student r
order by r.sno, r.sdept , r.sage desc

--22����ѯѧ����������
select COUNT(*)as'������'
from Student

--23����ѯѡ������ѧ�γ̵�ѧ��������

select COUNT(*)as'ѡ����ѧ�γ�����'
from sc t
where t.cno=(select s.cno
from Course s
where s.cname='��ѧ')
--24������1�ſγ̵�ѧ��ƽ���ɼ���
select AVG(u.greade)as'1�ſγ�ƽ����'
from sc u
where u.cno=1

--25����ѯѡ��1�ſγ̵�ѧ����߷�����
select MAX(v.greade)as'1�ſγ���߷�'
from sc v
where v.cno=1
--26����ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ����
select SUM(w.greade)
from sc w
where w.sno=200215121

--27��������γ̺ż���Ӧ��ѡ��������
select x.cno,COUNT(*)as'ѡ������'
from sc x
group by x.cno
--28����ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
select count (y.cno),y.sno
from sc y
group by y.sno
having count (y.cno)>=3
