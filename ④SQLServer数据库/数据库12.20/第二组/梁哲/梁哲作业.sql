--1.	��ѯȫ��ѧ����ѧ����������
SELECT a.Sno,a.Sname
from Student a
--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT b.Sname,b.Sno,b.Sdept
from Student b
--3.	��ȫ��ѧ���������������䡣
SELECT c.Sname,c.Sage
from Student c
--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT *
from Student d
WHERE d.Sdept='�������ѧϵ'
--5.	��ѯ����������20�����µ�ѧ�������������䡣
SELECT e.Sname,e.Sage
from Student e
WHERE e.Sage<=20
--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT f.Sname,f.Sage,f.Grade
from Student f
WHERE f.Sage<18 ORDER BY f.Grade
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT b.Sno
from Student b
where b.Grade<60ORDER BY b.Grade DESC
--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT l.Sname,l.Sdept,l.Sage
from Student l
WHERE l.Sage >=18 AND l.Sage<=22
--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
SELECT q.Sname,q.Sdept,q.Sage
from Student q
WHERE q.Sage<20OR q.Sage>23
--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT k.Sdept,k.Sname,k.Ssex
from Student k
WHERE k.Sdept='��Ϣϵ' or k.Sdept='��ѧϵ' or k.Sdept='�������ѧϵ'
--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT xc.Sdept,xc.Sname,xc.Ssex
from Student xc
WHERE xc.Sdept!='��Ϣϵ'AND xc.Sdept!='��ѧϵ'AND xc.Sdept!='�������ѧϵ'
--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT ds.Sno,ds.Sname,ds.Ssex,ds.Sage,ds.Sdept,ds.Grade
from Student ds
WHERE ds.Sno='09102040203'
--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT qs.Sname,qs.Sno,qs.Ssex
from Student qs
WHERE qs.Sname LIKE'��%'
--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT z.Sname
from Student z
WHERE z.Sname LIKE '��__'
--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT v.Sname,v.Sno
from Student v
WHERE v.Sname LIKE'%��%'
--16.	��ѯ���в��ա��¡���ѧ��������.
SELECT n.Sname
from Student n
WHERE n.Sname NOT LIKE'��'









