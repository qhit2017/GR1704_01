--1����ѯȫ��ѧ����ѧ����������
SELECT s.sno,s.sname
from student s

--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT s.sname,s.sno,s.sdept
from student s 

--3����ȫ��ѧ�����������������ݡ�
SELECT *,2017-s.sage
from student s


--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����

SELECT s.sno
from sc s
WHERE s.sno IS  NOT null
--5����ѯ�Ź�ϵȫ��ѧ����������
SELECT *
from student s
where s.sdept='�Ź�ϵ'

--6����ѯ����������20�����µ�ѧ��������������
SELECT s.sname,s.sage
from student s
where s.sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT s.sno
from sc s
where s.grade<60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT s.sname,s.sdept,s.sage
from student s
where s.sage in (18,23)

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT s.sname,s.sdept,s.sage
from student s
where s.sage  NOT IN (20,23)

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT s.sname,s.ssex
from student s
WHERE s.sdept='is' or s.sdept='ma' or s.sdept='cs'

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT  s.sname,s.ssex
from student s
where s.sdept  not IN ('is','ma','cs')
--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from student s
WHERE s.sno='2002151214'

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT s.sname,s.sno,s.ssex
from student s
where s.sname LIKE '��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT s.sname
from student s
where s.sname LIKE '��__'

--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT s.sname,s.sno
from student s
where s.sname LIKE '%��%'

--16����ѯ���в��ա��¡���ѧ��������
SELECT  s.sname
from student s
WHERE s.sname not LIKE '��%'

--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�

SELECT c.cno,c.ccredit
from course c
where c.canme ='���ݿ�'


--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT
from s

--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT s.sno,s.cno
from sc s
where s.grade IS NOT NULL

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT s.sno,s.grade
from sc s
where s.cno='3'
ORDER BY s.grade DESC

--21��	��ѯȫ��ѧ���������ѯ���������ѧ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
from student s
ORDER BY s.sdept DESC ,s.sage DESC ,s.sno

--22��	��ѯѧ����������
SELECT COUNT(s.sname)
from student s

--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT  COUNT(c.sno)
from sc c
where c.cno='2'

--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT avg(s.grade)
from sc s
where s.cno='1'

--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT MAX(s.grade)
from sc s
where s.cno='1'

--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(s.grade)
from sc s
where s.sno='200215121'

--27��	������γ̺ż���Ӧ��ѡ��������
SELECT s.cno,COUNT(s.cno)
from sc s
GROUP BY s.cno

--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT a.sno
from sc s INNER JOIN course c
on s.cno=c.cno
INNER JOIN student a
on a.sno=s.sno
GROUP BY a.sno
HAVING COUNT(s.cno)>3




