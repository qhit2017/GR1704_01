


--1����ѯȫ��ѧ����ѧ����������
SELECT Sno,Sname
from Student

--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT Sname,Sno,Sdept
from Student

--3����ȫ��ѧ������������������???��
SELECT Sname
from Student

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT s.Sno
from Student s LEFT JOIN SC sc ON s.Sno=sc.Sno
AND sc.Cno IS NOT NULL

--5����ѯ�������ѧϵȫ��ѧ����������
SELECT *
from Student
WHERE Sdept='cs'
 

--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT Sname,Sage
from Student
WHERE Sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT s.Sno
from Student s INNER JOIN SC sc
ON s.Sno=sc.Sno
AND sc.Grade<60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT Sname,Sdept,Sage
from Student
WHERE Sage BETWEEN 18 AND 22

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT Sname,Sdept,Sage
from Student
WHERE Sage NOT BETWEEN 20 AND 23

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT Sname,Ssex
from Student
WHERE Sdept IN('IS','MA','CS')

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT Sname,Ssex
from Student
WHERE Sdept NOT IN('IS','MA','CS')

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from Student
WHERE Sno='09102040203'

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT Sname,Sno,Ssex
from Student
WHERE Sname LIKE'��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT Sname
from Student
WHERE Sname LIKE'��__'

--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT Sname,Sno
from Student
WHERE Sname LIKE'_��%'

--16����ѯ���в��ա��¡���ѧ��������
SELECT Sname
from Student
WHERE Sname NOT LIKE'��%'

--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT Cno,Ccredit
from Course
WHERE Cname='DB_Design'

--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT Sno,Cno
from SC
WHERE Grade IS NULL

--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT Sno,Cno
from SC
WHERE Grade IS NOT NULL



--21����ѯȫ��ѧ���������ѯ���������ϵ��(???)�������У�ͬһϵ(???)�е�ѧ�������併�����С�
SELECT *
FROM Student
ORDER BY Sage DESC

--22����ѯѧ����������
SELECT COUNT(*) AS '������'
FROM Student

--23����ѯѡ������ѧ�γ̵�ѧ��������
SELECT COUNT(*)
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
and c.Cname='��ѧ'

--24������1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(Grade)
from SC
WHERE Cno=1

--25����ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT MAX(Grade)
from SC
WHERE Cno=1

--26����ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT sum(c.Ccredit)
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
AND s.Sno=200215121

--27��������γ̺ż���Ӧ��ѡ��������
SELECT c.Cno,COUNT(*) as 'ѡ������'
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
GROUP BY c.Cno

--28����ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT s.Sno
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
GROUP BY s.Sno
having COUNT(sc.Cno)>3