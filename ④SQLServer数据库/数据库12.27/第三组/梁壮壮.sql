--1����ѯȫ��ѧ����ѧ����������
SELECT Sno,Sname
from student 

--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT Sname ,Sno,Sdept
from student 

--3����ȫ��ѧ�����������������ݡ�
SELECT Sname ,2017-Sage AS '�������'
from student 

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT b.Sno
from  Course a INNER JOIN student  b ON a.Cno=b.Sno

--5����ѯ�������ѧϵȫ��ѧ����������
SELECT b.*
from  Course a INNER JOIN student  b ON a.Cno=b.Sno
WHERE a.Cname='�������ѧ'

--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT Sname,Sage
from student
WHERE Sage <20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT b.Sno
from sc1 a INNER JOIN student b ON a.Sno =b.Sno
WHERE a.Grade<60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT 
from 

9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������

10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�

11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�

12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����

13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�

14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������

15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�

16����ѯ���в��ա��¡���ѧ��������

--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT Cno,Ccredit
from Course
WHERE Cname='DB_Design'


--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT  c.Sno,b.Cname
from sc1 a LEFT  JOIN  Course b ON a.Cno =b.Cno  inner JOIN student c ON a.Sno =c.Sno
WHERE a.Grade IS NULL


--19���������гɼ���ѧ��ѧ�źͿγ̺š�

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�

---21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�

22��	��ѯѧ����������

23��	��ѯѡ������ѧ�γ̵�ѧ��������

24��	����1�ſγ̵�ѧ��ƽ���ɼ���

--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����


--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(a.Ccredit) 
from Course a INNER JOIN sc1 b ON a.Cno =b.Cno INNER JOIN student c ON c.Sno =b.Sno
WHERE  c.Sno='200215121'


--27��	������γ̺ż���Ӧ��ѡ��������
SELECT COUNT(*) 
from Course a INNER JOIN sc1 b ON a.Cno =b.Cno INNER JOIN student c ON c.Sno =b.Sno
GROUP BY a.Cno


--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT c.Sno ,COUNT(*) AS '����'
from Course a INNER JOIN sc1 b ON a.Cno =b.Cno INNER JOIN student c ON c.Sno =b.Sno

GROUP BY c.Sno
HAVING COUNT(a.Cname)>3




