--1����ѯȫ��ѧ����ѧ����������
SELECT s.sno,s.sname
from student s
--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT s.sname,s.sno,s.sdept
from student s
--3����ȫ��ѧ�����������������ݡ�
SELECT s.sname,(2017-s.sage) as '�������'
from student s
--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT s.sno
from sc s
where s.cno IS NOT NULL
--5����ѯ�������ѧϵȫ��ѧ����������
SELECT *
FROM student
WHERE sdept='CS'
--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT s.sname,s.sage
from student s
WHERE s.sage<20
--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT sno
from sc
WHERE grade<60
--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT s.sname,s.sdept,s.sage
from student s
WHERE s.sage BETWEEN 18 AND 22
--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT s.sname,s.sdept,s.sage
from student s
WHERE s.sage NOT BETWEEN 18 AND 22
--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT s.sname,s.ssex
from student s
WHERE s.sdept IN('IS','MA','CS')
--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT s.sname,s.ssex
from student s
WHERE s.sdept not IN('IS','MA','CS')
--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
FROM student
WHERE sno='09102040203'
--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT s.sname,s.sno,s.ssex
from student s
WHERE s.sname LIKE '��%'
--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT s.sname
from student s
WHERE s.sname LIKE '��__'
--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT sname,sno
from student
WHERE sname LIKE '_��%'
--16����ѯ���в��ա��¡���ѧ��������
SELECT sname
from student 
WHERE sname NOT LIKE '��%'
--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT c.cno,c.ccredit
from course c
WHERE c.cname='DB_Design'
--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT sno,cno
from sc
WHERE grade =0
--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT sno,cno
from sc
WHERE grade >0
--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT sno,grade
from sc
WHERE cno='3'
ORDER BY grade DESC
--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
from student
ORDER BY sdept,sage DESC
--22��	��ѯѧ����������
SELECT count(*) as 'ѧ��������'
from student
--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT COUNT(*) as 'ѡ����ѧ����'
from student s INNER JOIN sc sc
on s.sno=sc.sno INNER JOIN course c
on sc.cno=c.cno
AND c.cname='��ѧ'
--24��	����1�ſγ̵�ѧ��ƽ���ɼ���

--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT TOP 1 s.grade AS '��߷���'
from course c INNER JOIN sc s
ON c.cno=s.cno
WHERE c.cno='1'
ORDER BY s.grade DESC
--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(c.ccredit)as '��ѧ����'
from course c INNER JOIN sc s
ON c.cno=s.cno
WHERE s.sno='200215121'



