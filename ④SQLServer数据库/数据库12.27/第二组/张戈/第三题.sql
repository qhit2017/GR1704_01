SELECT *FROM Student
SELECT *FROM Course
SELECT *FROM SC

--1����ѯȫ��ѧ����ѧ����������
SELECT s.Sno,s.Sname 
from Student s

--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT s.Sno,s.Sname ,s.Sdept
from Student s

--3����ȫ��ѧ�����������������ݡ�
SELECT s.Sname,2017-s.Sage
from Student s

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT s.Sno,c.Cname
from SC a INNER JOIN Student s ON a.Sno=s.Sno
INNER JOIN Course c ON a.Cno=c.Cno

--5����ѯ�������ѧϵȫ��ѧ����������
SELECT s.Sname
from Student S
WHERE S.Sdept  IN ('CS')

--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT s.Sname,s.Sage
from Student s
where s.Sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT s.Sno
from SC a INNER JOIN Student s ON a.Sno=s.Sno
AND a.Grade<60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT s.Sname,s.Sdept,s.Sage
from Student s
where s.Sage BETWEEN 18 AND 22

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT s.Sname,s.Sdept,s.Sage
from Student s
where s.Sage NOT BETWEEN 20 AND 23

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT s.Sname,s.Ssex
from Student s
where s.Sdept IN ('IS','MA','CS')

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT s.Sname,s.Ssex
from Student s
where s.Sdept NOT IN ('IS','MA','CS')

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from Student s
WHERE s.Sno=09102040203

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT s.Sname,s.Sno,s.Ssex
from Student s
where s.Sname LIKE '��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT s.Sname
from Student s
where s.Sname LIKE '��__'

--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT s.Sname,s.Sno
from Student s
where s.Sname LIKE '_��%'

--16����ѯ���в��ա��¡���ѧ��������
SELECT s.Sname
from Student s
where s.Sname NOT LIKE '��%'

--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ��
SELECT c.Cno,c.Ccredit
from Course c
where c.Cname='DB_Design'

--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT *
from SC a RIGHT JOIN Student s ON a.Sno=s.Sno
INNER JOIN Course c ON a.Cno=c.Cno
AND a.Grade is NULL AND c.Cname IS NOT NULL

--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT *
from SC a RIGHT JOIN Student s ON a.Sno=s.Sno
INNER JOIN Course c ON a.Cno=c.Cno
AND a.Grade IS NOT NULL AND c.Cname IS NOT NULL

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT s.Sno,a.Grade
from Student s INNER JOIN SC a ON s.Sno=a.Sno
INNER JOIN Course c ON c.Cno=a.Cno
AND c.Cno=3
ORDER BY a.Grade DESC 

--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
from Student s
ORDER BY s.Sdept,s.Sage DESC

--22��	��ѯѧ����������
SELECT COUNT(*) 
from Student s

--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT COUNT(*)
from Student s INNER JOIN SC a ON s.Sno=a.Sno
INNER JOIN Course c on c.Cno=a.Cno 
and c.Cname='��ѧ'

--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(a.Grade)
from Student s INNER JOIN SC a ON s.Sno=a.Sno
INNER JOIN Course c on c.Cno=a.Cno 
AND c.Cno=1

--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT MAX(a.Grade)
from Student s INNER JOIN SC a ON s.Sno=a.Sno
INNER JOIN Course c on c.Cno=a.Cno 
AND c.Cno=1

--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(c.Ccredit)
from Student s INNER JOIN SC a ON s.Sno=a.Sno
INNER JOIN Course c on c.Cno=a.Cno 
AND s.Sno=200215121

--27��	������γ̺ż���Ӧ��ѡ��������
SELECT c.Cno, count(c.Cno)
from Student s INNER JOIN SC a ON s.Sno=a.Sno
INNER JOIN Course c on c.Cno=a.Cno 
GROUP BY c.Cno
--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT s.Sno
from Student s INNER JOIN SC a ON s.Sno=a.Sno
INNER JOIN Course c on c.Cno=a.Cno
GROUP BY s.Sno
HAVING COUNT(*)>3

