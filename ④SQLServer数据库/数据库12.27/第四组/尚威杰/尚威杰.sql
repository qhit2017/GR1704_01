--1����ѯȫ��ѧ����ѧ����������
SELECT DISTINCT  a.Sname,a.Sno 
from Student a
--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT DISTINCT  b.Sname ,b.Sno,b.Sdept 
from Student b
--3����ȫ��ѧ�����������������ݡ�
SELECT DISTINCT  c.Sname,2017-c.Sage 
from Student c
--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT DISTINCT  b.Sno 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
--5����ѯ�������ѧϵȫ��ѧ����������
SELECT *
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND c.CName='�����'
--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT DISTINCT  a.Sname ,a.Sage
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND a.Sage<20
--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT DISTINCT  a.Sno 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND b.Grade  <60
--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT DISTINCT a.Sname,a.Sdept,a.Sage
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND a.Sage>18 AND a.Sage<22
--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT a.Sname,a.Sdept,a.Sage
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND a.Sage<20 AND a.Sage>23
--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT DISTINCT  a.Sname,a.Ssex
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
WHERE  a.Sdept='IT'
OR  a.Sdept='CS'
OR  a.Sdept='MA'
--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT DISTINCT  a.Sname ,a.Ssex
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
WHERE a.Sdept!='IT'
AND a.Sdept !='MA'
AND a.Sdept !='CS'
--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT DISTINCT  *
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
WHERE a.Sno='200215121'
--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.Sname ,a.Sno,a.Ssex
from Student a 
WHERE a.Sname LIKE '��%'
--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT *
from Student a
WHERE a.Sname LIKE '��__'
--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT a.Sname ,a.Sage
from Student a 
WHERE a.Sname LIKE '_��_'
--16����ѯ���в��ա��¡���ѧ��������
SELECT *
from Student a 
WHERE a.Sname NOT  LIKE '��%'
--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT c.Cno,c.Ccredit
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
WHERE a.Sname ='DB_Design'
--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT a.Sno,c.Cno
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
WHERE NULL =b.Grade
--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT a.Sno,c.Cno
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT a.Sno ,b.Grade 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND c.Cno ='3'
ORDER BY b.Grade DESC 
--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
ORDER BY a.Sdept  DESC 
--22��	��ѯѧ����������
SELECT COUNT(*)  
from Student 
--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT COUNT(*) 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND b.Grade='��ѧ'
--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(b.Grade) 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND c.Cno='1'
--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT MAX(b.Grade)  
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND c.Cno='1'
--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(c.Ccredit) 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND a.Sno ='200215121'
--27��	������γ̺ż���Ӧ��ѡ��������
SELECT COUNT(*) 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
GROUP BY c.Cno
--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT a.Sno
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND   c.Cno >3