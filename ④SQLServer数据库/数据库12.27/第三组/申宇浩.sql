SELECT * FROM Student
SELECT * FROM Course
SELECT * FROM SC



--1����ѯȫ��ѧ����ѧ����������
SELECT s.Sno,a.Sname
from Course c INNER JOIN SC s ON c.Cno =s.Cno
INNER JOIN Student a on s.Sno = a.Sno


--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT s.Sname ,s.Sno,s.Sdept
from Student s INNER JOIN SC a ON s.Sno = a.Sno
INNER JOIN Course c ON a.Cno = c.Cno

--3����ȫ��ѧ�����������������ݡ�
SELECT s.Sname,2017-s.Sage
from Student s INNER JOIN SC a ON s.Sno = a.Sno 
INNER JOIN Course c ON a.Cno = c.Cno

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT DISTINCT s.Sno
 from Course c INNER JOIN SC a ON c.Cno = a.Cno 
 INNER JOIN Student s ON a.Sno = s.Sno 
 AND c.CName ='����' OR
     c.CName = '˼��' OR
     c.CName = 'Ӣ��'

--5����ѯ�������ѧϵȫ��ѧ����������
SELECT *
from Course c INNER JOIN SC a ON c.Cno = a.Cno 
INNER JOIN Student s ON a.Sno = s.Sno
AND s.Sdept ='����ϵ'

--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT s.Sname,s.Sage
from Course c INNER JOIN SC a ON c.Cno =a.Cno 
INNER JOIN Student s ON a.Sno = s.Sno 
AND s.Sage <20


--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT s.Sno
from Course c INNER JOIN SC a ON c.Cno = a.Cno 
INNER JOIN Student s ON a.Sno = s.Sno 
AND a.Grade <60


--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT s.Sname,s.Sdept,s.Sage
from Course c INNER JOIN SC a ON c.Cno = a.Cno
INNER JOIN Student s ON a.Sno = s.Sno 
AND s.Sage IN (18,22)

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT s.Sname,s.Sdept,s.Sage
from Course c INNER JOIN SC a ON c.Cno = a.Cno
INNER JOIN Student s ON a.Sno = s.Sno 
AND s.Sage NOT IN (20,23)


--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT s.Sname,s.Ssex
from Course c INNER JOIN SC a ON c.Cno =a.Cno 
INNER JOIN Student s ON a.Sno = s.Sno 
AND s.Sdept IN ('��Ϣϵ','��ѧϵ','�������ѧϵ') 


--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT s.Sname,s.Ssex
from Course c INNER JOIN SC a ON c.Cno =a.Cno 
INNER JOIN Student s ON a.Sno = s.Sno 
AND s.Sdept NOT IN ('��Ϣϵ','��ѧϵ','�������ѧϵ')

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT DISTINCT *
from Course c INNER JOIN SC a ON c.Cno = a.Cno 
INNER JOIN Student s ON a.Sno = s.Sno 
AND s.Sno ='2002151220'

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.Sname ,a.Sno ,a.Ssex
from Course c INNER JOIN SC s ON c.Cno = s.Cno
INNER JOIN Student a ON s.Sno = a.Sno 
AND a.Sname LIKE '��%'


--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT a.Sname
from Course c INNER JOIN SC s ON c.Cno = s.Cno
INNER JOIN Student a ON s.Sno = a.Sno 
AND a.Sname LIKE '��__'