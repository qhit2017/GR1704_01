INSERT INTO Student VALUES(200215121,'����','��',20,'CS')
INSERT INTO Student VALUES(200215122,'����','Ů',19,'CS')
INSERT INTO Student VALUES(200215123,'����','Ů',18,'MA')
INSERT INTO Student VALUES(200215124,'����','��',19,'IS')
INSERT INTO Student VALUES(200215125,'Ӱ','��',20,'CS')
INSERT INTO Student VALUES(200215126,'��','Ů',19,'CS')
INSERT INTO Student VALUES(200215127,'��','Ů',18,'MA')
INSERT INTO Student VALUES(200215128,'��','��',19,'IS')
INSERT INTO Student VALUES(200215129,'���ļ�','Ů',18,'MA')
INSERT INTO Student VALUES(200215130,'������','Ů',19,'IS')
INSERT INTO Student VALUES(200215131,'̩���׶�','��',20,'CS')
INSERT INTO Student VALUES(200215132,'��','��',19,'CS')
INSERT INTO Student VALUES(200215133,'��������','Ů',18,'MA')
INSERT INTO Student VALUES(200215134,'����','��',19,'IS')
INSERT INTO Student VALUES(200215135,'����','��',20,'CS')
INSERT INTO Student VALUES(200215136,'����˿','Ů',19,'CS')
INSERT INTO Student VALUES(200215137,'���˹','Ů',18,'MA')
INSERT INTO Student VALUES(200215138,'����','��',19,'IS')
INSERT INTO Student VALUES(200215139,'����','Ů',18,'MA')
INSERT INTO Student VALUES(200215140,'������','Ů',19,'IS')
INSERT INTO Student VALUES(200215141,'���ʽ�','��',20,'CS')
INSERT INTO Student VALUES(200215142,'ŬŬ','Ů',19,'CS')
INSERT INTO Student VALUES(200215143,'������','Ů',18,'MA')
INSERT INTO Student VALUES(200215144,'�����','��',19,'IS')
INSERT INTO Student VALUES(200215145,'������˹','��',20,'CS')
INSERT INTO Student VALUES(09102040203,'��','��',20,'CS')

INSERT INTO Course VALUES(1,'���ݿ�',4)
INSERT INTO Course VALUES(2,'��ѧ',2)
INSERT INTO Course VALUES(3,'��Ϣϵͳ',4)
INSERT INTO Course VALUES(4,'����ϵͳ',2)
INSERT INTO Course VALUES(5,'���ݽṹ',2)
INSERT INTO Course VALUES(6,'���ݴ���',4)
INSERT INTO Course VALUES(7,'PASCAL����',3)
INSERT INTO Course VALUES(8,'����',5)
INSERT INTO Course VALUES(9,'��ѧ',2)

INSERT INTO SC VALUES(200215121,1,92)
INSERT INTO SC VALUES(200215121,2,82)
INSERT INTO SC VALUES(200215121,3,55)
INSERT INTO SC VALUES(200215122,2,58)
INSERT INTO SC VALUES(200215122,1,60)
INSERT INTO SC VALUES(200215127,6,84)
INSERT INTO SC VALUES(200215126,7,71)
INSERT INTO SC VALUES(200215125,9,76)
INSERT INTO SC VALUES(200215140,8,75)
INSERT INTO SC VALUES(200215143,1,51)
INSERT INTO SC VALUES(200215131,9,77)
INSERT INTO SC VALUES(200215131,3,71)
INSERT INTO SC VALUES(200215137,6,15)
INSERT INTO SC VALUES(200215144,2,59)
INSERT INTO SC VALUES(200215126,1,60)
INSERT INTO SC VALUES(200215129,1,84)
INSERT INTO SC VALUES(200215135,9,71)
INSERT INTO SC VALUES(200215140,9,76)
INSERT INTO SC VALUES(200215140,5,75)
INSERT INTO SC VALUES(200215141,4,51)
INSERT INTO SC VALUES(20021532,1,84)
INSERT INTO SC VALUES(200215135,9,71)
INSERT INTO SC VALUES(200215121,9,76)
INSERT INTO SC VALUES(200215129,5,75)
INSERT INTO SC VALUES(200215127,4,51)

--1����ѯȫ��ѧ����ѧ����������
SELECT s.Sno,s.Sname
from Student s 
--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT s.Sno,s.Sname,s.Sdept
from Student s 
--3����ȫ��ѧ�����������������ݡ�
--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT s.Sno,s.Cno
from SC s
WHERE s.Cno IS NOT  NULL
--5����ѯ�������ѧϵȫ��ѧ����������
SELECT*
from Student s
WHERE s.Sdept='is'
--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT s.Sname,s.Sage
from Student s
WHERE s.Sage<20
--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT s.Sno
from SC s
WHERE s.Grade<60
--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT s.Sname,s.Sdept,s.Sage
from Student s
WHERE s.Sage BETWEEN 18 AND 22  
--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT s.Sname,s.Sdept,s.Sage
from Student s
WHERE s.Sage NOT BETWEEN 18 AND 22
--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT s.Sname,s.Ssex
from Student s
WHERE s.Sdept IN('IS','MA','CS')
--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT  s.Sname,s.Ssex
FROM Student S
WHERE S.Sdept NOT IN('IS','MA','CS')
--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT*
FROM Student S
WHERE S.Sno LIKE'09102040203'
--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT S.Sname,s.Sno,s.Ssex
FROM Student S
WHERE S.Sname LIKE'��%'
--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT S.Sname
FROM Student S
WHERE S.Sname LIKE'��__'
--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
sELECT S.Sname,s.Sno
FROM Student S
WHERE S.Sname LIKE'_��%'
--16����ѯ���в��ա��¡���ѧ��������
sELECT S.Sname
FROM Student S
WHERE S.Sname NOT LIKE'��%'
--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ��
SELECT c.Cno,e.Ccredit
from Student s INNER JOIN SC c
ON s.Sno=c.Sno
INNER JOIN Course e
ON c.Cno=e.Cno  
AND s.Sname='DB_Design'
--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT s.Sno,s.Cno
from SC s
WHERE s.Grade IS NULL
--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT s.Sno,s.Cno
from SC s
WHERE s.Grade  IS NOT NULL
--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT s.Sno,s.Grade
from SC s
WHERE s.Cno='3'
ORDER BY s.Grade DESC
--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT*
from Student s
ORDER BY s.Sdept,s.Sage DESC

--22��	��ѯѧ����������
SELECT COUNT(s.Sno)
from Student s

--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT  COUNT(s.Sdept)
from Student s
WHERE s.Sdept='ma'

--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(s.Grade)
from SC s
WHERE s.Cno='1'

--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT max(s.Grade)
from SC s
WHERE s.Cno='1'
--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(c.Grade)
from Student s INNER JOIN SC c
on s.Sno=c.Sno
WHERE s.Sno='200215121'
--27��	������γ̺ż���Ӧ��ѡ��������
SELECT s.Cno ,COUNT(*)
from SC s
GROUP BY s.Cno

--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT s.Sno
from SC s
GROUP BY s.Sno HAVING COUNT(*)>3


 
