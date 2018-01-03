--1����ѯȫ��ѧ����ѧ����������

SELECT a.sno,a.sname
from student a


--2����ѯȫ��ѧ����������ѧ�š�����ϵ��

SELECT a.sname,a.sno,a.sdept
from student a

--3����ȫ��ѧ�����������������ݡ�

SELECT a.sname,(2017-a.sage)as'�������'
from student a


--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����

SELECT s.sno
from student s LEFT JOIN SC a on s.sno=a.sno
	LEFT JOIN course c ON a.cno=c.cno
	AND c.cname is not NULL 
	
--5����ѯJAVAϵȫ��ѧ����������

SELECT s.sname
from student s INNER join SC a on s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	AND c.cname='JAVA'


--6����ѯ����������20�����µ�ѧ�������������䡣

select a.sname,a.sage 
from student a WHERE a.sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�

SELECT s.sno
from student s INNER JOIN SC a ON s.sno=a.sno
	AND a.grade<60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������

SELECT s.sname,s.sdept,s.sage
from student s 
WHERE s.sage BETWEEN 18 AND 22

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������

SELECT s.sname,s.sdept,s.sage
from student s 
WHERE s.sage NOT BETWEEN 20 AND 23

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�

SELECT s.sname,s.ssex
from student s 
WHERE s.sdept IN ('IS','MA','CS')

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�

SELECT s.sname,s.ssex
from student s 
WHERE s.sdept NOT IN ('IS','MA','CS')

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����

SELECT *
from student
WHERE sno='09102040203'

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�

SELECT a.sname,a.sno,a.ssex
from student a
WHERE a.sname LIKE '��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������

SELECT sname
from student
WHERE sname LIKE '��__'
--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�

SELECT sname,sno
from student
WHERE sname LIKE'_��%'

--16����ѯ���в��ա��¡���ѧ��������

SELECT sname
from student
WHERE sname NOT LIKE '��%'

--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�

SELECT c.cno,a.grade
from student s INNER JOIN SC a ON s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	AND c.cname='DB_Design'

--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�

SELECT s.sno,c.cno
from student s LEFT JOIN SC a ON s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	AND a.grade IS NULL


--19���������гɼ���ѧ��ѧ�źͿγ̺š�

SELECT s.sno,c.cno
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on a.cno=c.cno
	AND a.grade IS NOT NULL

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�

SELECT s.sno,a.grade
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on a.cno=c.cno
	AND c.cno='3'

--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�

SELECT *
from student s
ORDER BY s.sdept,s.sage DESC

--22��	��ѯѧ����������

SELECT COUNT(*)as'������'
from student

--23��	��ѯѡ������ѧ�γ̵�ѧ��������

SELECT COUNT(*)
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	AND c.cname='��ѧ'

--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
--27��	������γ̺ż���Ӧ��ѡ��������
--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT a.sno
from student s INNER JOIN SC a on s.sno=a.sno
	INNER JOIN course c on c.cno=a.cno
	GROUP BY a.sno
	HAVING COUNT(*) >2

