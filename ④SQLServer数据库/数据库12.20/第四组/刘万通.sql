INSERT INTO student VALUES (1,'����','��',199,'�廪IT',89)
INSERT INTO student VALUES (2,'����','��',139,'�廪IT',73)
INSERT INTO student VALUES (3,'���Ƴ�','��',139,'�廪IT',59)
INSERT INTO student VALUES (4,'�ŷ�','��',179,'�廪IT',78)
INSERT INTO student VALUES (5,'�����','��',112,'�廪IT',12)
INSERT INTO student VALUES (6,'����','��',18,'�廪IT',44)
INSERT INTO student VALUES (7,'������','��',179,'�廪IT',19)
SELECT * FROM student
--��ѯ����ѧ��ѧ��������
SELECT a.sno ,a.sname
FROM student a
--��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT b.sname,b.sno,b.Sdept
FROM student b
--��ȫ��ѧ���������������䡣
SELECT c.sname,c.sage
from student c
--��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT*
FROM student d
WHERE d.Sdept='�廪IT'
--��ѯ����������20�����µ�ѧ�������������䡣
SELECT  e.sname,e.sage
FROM student e
WHERE e.sage<20
--��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT f.sname,f.sage,f.Grade
from student f
WHERE f.sage<180
SELECT *FROM student j
ORDER BY  j.Grade

--��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT h.sno
from student h
WHERE h.Grade<60
SELECT *FROM student i
ORDER BY i.Grade DESC 
--��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT g.sname,g.Sdept,g.sage
from student g
WHERE g.sage BETWEEN 18 AND 22
--��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
SELECT g.sname,g.Sdept,g.sage
from student g
WHERE g.sage NOT  BETWEEN 20 AND 23
--��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT a.sname,a.ssex
from student a
WHERE a.Sdept='��Ϣϵ' or a.Sdept='��ѧϵ'or a.Sdept='�������ѧϵ'
--��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT a.sname,a.ssex
from student a
WHERE a.Sdept!='��Ϣϵ' or a.Sdept!='��ѧϵ'or a.Sdept!='�������ѧϵ'
--��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT c.sno,c.sname,c.ssex,c.sage,c.sdept,c.grade
from student c
WHERE c.sno=09102040203
--��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT c.sname,c.sno,c.ssex
from student c
WHERE c.sname LIKE '��%' 
--��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT c.sname
from student c
WHERE c.sname LIKE '��__' 
--��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT c.sname,c.sno
from student c
WHERE c.sname LIKE '_��_' 
--��ѯ���в��ա��¡���ѧ��������
SELECT c.sname
from student c
WHERE c.sname  not LIKE '��%' 
