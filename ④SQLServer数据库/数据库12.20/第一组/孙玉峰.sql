--1.��ѯȫ��ѧ����ѧ����������
SELECT a.sno, a.sname
from Student a
--2.��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT q.sname,q.sno,s.Sdept
from Student q 
--3.��ȫ��ѧ���������������䡣
SELECT d.sname,d.Sage
from Student d
--4.��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT*
from Student x
WHERE x.Sdept='�������ѧ'
--5.��ѯ����������20�����µ�ѧ�������������䡣
SELECT k.sname,k.Sage
FROM Student k
where k.Sage<20
--6.��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT k.sname,k.Sage,k.Grade
from Student k
WHERE k.Sage<18
SELECT*FROM Student g 
ORDER by g.Grade
--7.��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT j.sno
from Student j
WHERE j.Grade<60
SELECT*FROM Student h
ORDER by h.sno
--8.��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT b.sname,b.Sage,b.Sdept
from Student b
WHERE b.Sage>=18 AND b.Sage<23
--9.��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
SELECT b.sname,b.Sage,b.Sdept
from Student b
WHERE b.Sage<20 AND b.Sage>23
--10.��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT l.sname,l.Sage,l.Sdept
from Student l
WHERE l.Sdept='��Ϣϵ' or l.Sdept='��ѧϵ'and l.Sdept='�������ѧϵ'
--11.��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT l.sname,l.Sage,l.Sdept
from Student l
WHERE l.Sdept!='��Ϣϵ'or l.Sdept!='��ѧϵ'and l.Sdept='�������ѧϵ'
--12.��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT j.sno,j.sname,j.Ssex,j.Sage,j.Sdept,j.Grade
from Student j
WHERE j.Grade=09102040203
--13.��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT h.sno,h.sname,h.Ssex
from Student h
WHERE  h.sname LIKE '��%'
--14.��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT j.sname
from Student j
WHERE  j.sname  LIKE '��__'
--15.��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT j.sname,j.sno
from Student j
WHERE  j.sname LIKE '_��'
--16.��ѯ���в��ա��¡���ѧ��������
SELECT i.sno,i.sname,i.Ssex
from Student i
WHERE  i.sname NOT LIKE '��%'