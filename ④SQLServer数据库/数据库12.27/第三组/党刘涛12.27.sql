--1����ѯȫ��ѧ����ѧ����������
SELECT c.cno,sq.sname
from Course c INNER JOIN  sc s ON c.cno=s.cno 
 INNER JOIN  student sq ON sq.sno= s.sno
--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT sq.sname,sq.sno,sq.sdept
from Course c INNER JOIN sc s ON c.cno=s.cno
 INNER JOIN student sq ON sq.sno=s.sno
SELECT*FROM Course
SELECT*FROM sc
SELECT*FROM student
--3����ȫ��ѧ�����������������ݡ�
SELECT se.sname,YEAR(GETDATE())-se.sage
from Course c INNER JOIN sc s ON c.cno=s.cno
 INNER JOIN student se ON se.sno=s.sno

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT DISTINCT s.sno
from Course c INNER JOIN sc s ON c.cno=s.cno
 INNER JOIN student sq ON sq.sno=s.sno
	  AND  c.cname='����'OR
	  c.cname='��ѧ'OR
	  c.cname='˼��'OR
	  c.cname='Ӣ��'
--5����ѯ�������ѧϵȫ��ѧ����������
SELECT  *
from Course c INNER JOIN sc s ON c.cno =s.cno
 INNER JOIN student sq ON s.sno=sq.sno
 AND sq.sdept='����ϵ'

--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT s.sname,s.sage
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
  AND s.sage<20 

--7����ѯ���Գɼ��в������ѧ����ѧ�š�

SELECT s.sno,s.sname
from Course c INNER JOIN sc sc ON c.cno =sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND sc.Grade<60
--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT s.sname,s.sage,s.sdept
from Course c INNER JOIN sc sc ON c.cno= sc.cno
 INNER JOIN student s ON s.sno = sc.sno
 AND s.sage IN (18,22)
--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT s.sname,s.sage,s.sdept
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno =sc.sno
  AND s.sage NOT IN(20,23)

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT  s.sname,s.ssex
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno = sc.sno 
 AND s.sdept IN ('is','ma','cs')

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT s.sname,s.ssex
from Course c INNER JOIN sc sc ON c.cno =sc.cno 
 INNER JOIN student s ON s.sno=sc.sno
  AND s.sdept NOT IN('is','ma','cs')

--12����ѯѧ��Ϊ200215121��ѧ������ϸ�����
SELECT *
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND s.sno='200215121'
 

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT s.sname,s.sno ,s.ssex
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND s.sname LIKE '��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT s.sname,s.sno ,s.ssex
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND s.sname LIKE '��__'

--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT s.sname,s.sno ,s.ssex
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND s.sname LIKE '_��%'

--16����ѯ���в��ա��¡���ѧ��������
SELECT s.sname
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND s.sname not LIKE '��%'


--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT c.Ccredit,sc.Grade
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND c.cname='pascal����'
--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT *
from Course c INNER JOIN sc sc ON sc.cno=c.cno
 LEFT JOIN student s ON s.sno=sc.sno
 
--19���������гɼ���ѧ��ѧ�źͿγ̺š�

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�

--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�

--22��	��ѯѧ����������

--23��	��ѯѡ������ѧ�γ̵�ѧ��������

--24��	����1�ſγ̵�ѧ��ƽ���ɼ���

--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����

--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������

--27��	������γ̺ż���Ӧ��ѡ��������

--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
