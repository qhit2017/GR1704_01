SELECT * FROM student  
SELECT * FROM course
SELECT * FROM sc
--  ��,�������
-- student
INSERT INTO student VALUES(200215121,'����','��',20,'CS')
INSERT INTO student VALUES(200215122,'����','Ů',19,'CS')
INSERT INTO student VALUES(200215123,'����','Ů',20,'MA')
INSERT INTO student VALUES(200215125,'����','��',19,'IS')
INSERT INTO student VALUES(200215126,'��һ��','��',20,'CS')
INSERT INTO student VALUES(200215127,'�����','��',20,'CS')
INSERT INTO student VALUES(200215128,'������','��',20,'CS')
INSERT INTO student VALUES(200215129,'������','��',20,'CS')
INSERT INTO student VALUES(200215130,'������','��',20,'CS')
INSERT INTO student VALUES(200215134,'������','��',20,'CS')
-- course
INSERT INTO course VALUES(1,'���ݿ�',4)
INSERT INTO course VALUES(2,'��ѧ',2)
INSERT INTO course VALUES(3,'��Ϣϵͳ',4)
INSERT INTO course VALUES(4,'����ϵͳ',3)
INSERT INTO course VALUES(5,'���ݽṹ',4)
INSERT INTO course VALUES(6,'���ݴ���',5)
INSERT INTO course VALUES(7,'PASCAL����',6)
INSERT INTO course VALUES(8,'��ѧ',8)
INSERT INTO course VALUES(9,'����',5)
INSERT INTO course VALUES(10,'����',4)
-- sc
INSERT INTO sc VALUES(200215121,1,91)
INSERT INTO sc VALUES(200215121,3,93)
INSERT INTO sc VALUES(200215122,5,95)
INSERT INTO sc VALUES(200215122,6,89)
INSERT INTO sc VALUES(200215123,4,76)
INSERT INTO sc VALUES(200215123,7,85)
INSERT INTO sc VALUES(200215123,8,99)
INSERT INTO sc VALUES(200215129,8,92)
INSERT INTO sc VALUES(200215125,8,78)
INSERT INTO sc VALUES(200215126,10,82)
--  ��,��ѯ
--1����ѯȫ��ѧ����ѧ����������
SELECT DISTINCT a.Sno,a.Sname
from student a
--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT DISTINCT b.Sname,b.Sno,b.Sdept
from student b
--3����ȫ��ѧ�����������������ݡ�
SELECT c.Sname,2017-c.Sage
from student c
--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT DISTINCT d.Sno
from sc d
WHERE d.Cno >0
--5����ѯ�������ѧϵȫ��ѧ����������
SELECT *
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE CName='�������ѧϵ'
--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT DISTINCT s.Sname,s.Sage
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sage<20
--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT DISTINCT s.Sno
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE sc.Grade<60
--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT DISTINCT  s.Sname,s.Sdept,s.Sage
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sage>18 AND s.Sage<22
--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT DISTINCT  s.Sname,s.Sdept,s.Sage
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sage<20 AND s.Sage>23
--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT DISTINCT  s.Sname,s.Ssex
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
AND s.Sdept='IS'
OR s.Sdept='MA'
OR s.Sdept='CS'
--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT DISTINCT  s.Sname,s.Ssex
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sdept != 'IS' 
AND s.Sdept != 'MA' 
AND s.Sdept != 'CS' 
--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT DISTINCT *
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sno=09102040203

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT DISTINCT s.Sname,s.Sage,s.Ssex
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sname LIKE '��%'
--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT DISTINCT s.Sname
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sname LIKE '��__'
--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT  s.Sname
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sname LIKE '_��_'
--16����ѯ���в��ա��¡���ѧ��������
SELECT  s.Sname
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sname NOT LIKE '��%'
--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT sc.Cno,Ccredit
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE CName='DB_Design'
--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT s.Sno,sc.Cno
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE NULL = sc.Grade 
--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT s.Sno,sc.Cno
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE NOT NULL=sc.Grade
--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT s.Sno,sc.Grade
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE sc.Cno=3
ORDER BY sc.Grade DESC
--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
ORDER BY s.Sdept DESC

--22��	��ѯѧ����������
SELECT COUNT(*)
FROM student 
--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT COUNT(*)
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE CName='��ѧ'
--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(sc.Cno)
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE sc.Cno=1
--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT MAX(sc.Cno)
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE sc.Cno=1
--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(Ccredit)
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sno=200215121
--27��	������γ̺ż���Ӧ��ѡ��������
SELECT sc.Cno,COUNT(*)
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
GROUP BY sc.Cno
--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT COUNT(*)
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
GROUP BY s.Sno


