INSERT INTO student VALUES (2001001,'�ܲ�','��',20,'cs')
INSERT INTO student VALUES (2001002,'�ŷ�','��',19,'is')
INSERT INTO student VALUES (2001003,'��','��',18,'cs')
INSERT INTO student VALUES (2001004,'����','��',19,'ma')
INSERT INTO student VALUES (2001005,'����','��',22,'cs')
INSERT INTO student VALUES (2001006,'������','��',28,'cs')
INSERT INTO student VALUES (2001007,'����','Ů',20,'is')
INSERT INTO student VALUES (2001008,'����','��',22,'cs')
INSERT INTO student VALUES (2001009,'˾��ܲ','��',23,'ma')
INSERT INTO student VALUES (2001010,'���','��',20,'cs')
INSERT INTO student VALUES (2001012,'����','Ů',18,'is')
INSERT INTO student VALUES (2001013,'С��','Ů',17,'is')
INSERT INTO student VALUES (2001014,'������','Ů',20,'ma')
INSERT INTO student VALUES (2001015,'��ά','��',18,'cs')
INSERT INTO student VALUES (2001016,'��˾ͽ','��',23,'ma')
INSERT INTO student VALUES (2001017,'����','��',20,'is')
INSERT INTO student VALUES (2001018,'����','��',20,'cs')
INSERT INTO student VALUES (2001019,'�����','��',21,'ma')
INSERT INTO student VALUES (2001020,'��Ȩ','��',19,'cs')
INSERT INTO student VALUES (2001021,'½ѷ','��',21,'is')
INSERT INTO student VALUES (2001022,'³��','��',23,'ma')
INSERT INTO student VALUES (2001023,'����','��',20,'cs')
INSERT INTO student VALUES (2001024,'��ͳ','��',21,'ma')
INSERT INTO student VALUES (2001025,'����','��',20,'ma')


INSERT INTO course VALUES (1,'���ݿ�',4)
INSERT INTO course VALUES (2,'��ѧ',4)
INSERT INTO course VALUES (3,'��Ϣϵͳ',5)
INSERT INTO course VALUES (4,'����ϵͳ',4)
INSERT INTO course VALUES (5,'���ݽṹ',6)
INSERT INTO course VALUES (6,'���ݴ���',4)
INSERT INTO course VALUES (7,'PASCAL����',6)
INSERT INTO course VALUES (8,'���ݿ�',5)
INSERT INTO course VALUES (9,'��Ϣϵͳ',4)
INSERT INTO course VALUES (10,'����ϵͳ',5)
INSERT INTO course VALUES (11,'����ϵͳ',6)
INSERT INTO course VALUES (12,'���ݽṹ',6)
INSERT INTO course VALUES (13,'���ݴ���',4)
INSERT INTO course VALUES (14,'PASCAL����',5)
INSERT INTO course VALUES (15,'���ݿ�',5)
INSERT INTO course VALUES (16,'��Ϣϵͳ',4)
INSERT INTO course VALUES (17,'����ϵͳ',5)
INSERT INTO course VALUES (18,'���ݽṹ',6)
INSERT INTO course VALUES (19,'���ݴ���',5)
INSERT INTO course VALUES (20,'PASCAL����',4)
INSERT INTO course VALUES (21,'���ݿ�',4)
INSERT INTO course VALUES (22,'��Ϣϵͳ',6)
INSERT INTO course VALUES (23,'����ϵͳ',5)
INSERT INTO course VALUES (24,'���ݽṹ',6)
INSERT INTO course VALUES (25,'PASCAL����',4)


INSERT INTO sc VALUES (2001002,2,62)
INSERT INTO sc VALUES (2001005,3,75)
INSERT INTO sc VALUES (2001001,5,75)
INSERT INTO sc VALUES (2001016,6,86)
INSERT INTO sc VALUES (2001013,4,89)
INSERT INTO sc VALUES (2001020,7,78)
INSERT INTO sc VALUES (2001010,8,76)
INSERT INTO sc VALUES (2001009,1,88)
INSERT INTO sc VALUES (2001008,10,72)
INSERT INTO sc VALUES (2001006,9,58)

--1����ѯȫ��ѧ����ѧ����������
SELECT a.Sno,a.sname
from student a
--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT a.Sno,a.sname,a.sdept
from student a
--3����ȫ��ѧ�����������������ݡ�
SELECT a.sname ,2017-a.sage
from student a
--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT a.sno
from sc a 
--5����ѯ�������ѧϵȫ��ѧ����������
SELECT a.sname
from student a
WHERE a.sdept='cs'
--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT a.sname,a.sage
from student a
WHERE a.sage<20
--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT a.sno
from sc a
WHERE a.grade<60
--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT a.sname,a.sdept,a.sage
from student a
WHERE a.sage>=18 AND a.sage<=22
--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT a.sname,a.sdept,a.sage
from student a
WHERE a.sage<18 OR a.sage>22
--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT a.sname,a.ssex
from student a
where a.sdept in('is','ma','cs') 
--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT a.sname,a.ssex
from student a
where a.sdept NOT  in('is','ma','cs') 
--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT*
from student a
where a.Sno=09102040203
--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.sname,a.Sno,a.ssex
from student a
WHERE a.sname LIKE '��%'
--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT a.sname
from student a
WHERE a.sname LIKE '��__'