INSERT INTO Student VALUES(200215121,'����','��',20,'cs')
INSERT INTO Student VALUES(200215122,'����','Ů',19,'cs')
INSERT INTO Student VALUES(200215123,'����','Ů',18,'MA')
INSERT INTO Student VALUES(200515125,'����','��',19,'IS')
SELECT*FROM Student
INSERT INTO Student VALUES(200215126,'����','��',20,'cs')
INSERT INTO Student VALUES(200215127,'�ܲ�','Ů',19,'cs')
INSERT INTO Student VALUES(200215128,'������','Ů',18,'MA')
INSERT INTO Student VALUES(200515129,'��1','��',19,'IS')
INSERT INTO Student VALUES(200215131,'��2','��',20,'cs')
INSERT INTO Student VALUES(200215132,'��3','Ů',19,'cs')
INSERT INTO Student VALUES(200215133,'��4','Ů',18,'MA')
INSERT INTO Student VALUES(200515135,'��5','��',19,'IS')
INSERT INTO Student VALUES(200215141,'��6','��',20,'cs')
INSERT INTO Student VALUES(200215142,'��7','Ů',19,'cs')
INSERT INTO Student VALUES(200215143,'��7','Ů',18,'MA')
INSERT INTO Student VALUES(200515145,'��8','��',19,'IS')
INSERT INTO Student VALUES(200215151,'��9','��',20,'cs')
INSERT INTO Student VALUES(200215152,'��10','Ů',19,'cs')
INSERT INTO Student VALUES(200215153,'��11','Ů',18,'MA')
INSERT INTO Student VALUES(200515155,'��12','��',19,'IS')
INSERT INTO Student VALUES(200215161,'��13','��',20,'cs')
INSERT INTO Student VALUES(200215162,'��14','Ů',19,'cs')
INSERT INTO Student VALUES(200215163,'��15','Ů',18,'MA')
INSERT INTO Student VALUES(200515165,'��16','��',19,'IS')
INSERT INTO Student VALUES(200515175,'��17','��',19,'IS')
























SELECT *FROM Course
INSERT INTO Course VALUES(1,'���ݿ�',4)
INSERT INTO Course VALUES(2,'��ѧ',2)
INSERT INTO Course VALUES(3,'��Ϣϵͳ',4)
INSERT INTO Course VALUES(4,'����ϵͳ',3)
INSERT INTO Course VALUES(5,'���ݽṹ',4)
INSERT INTO Course VALUES(6,'���ݴ���',2)
INSERT INTO Course VALUES(7,'pascal',4)
INSERT INTO Course VALUES(8,'���ݿ�',4)
INSERT INTO Course VALUES(9,'��ѧ',2)
INSERT INTO Course VALUES(10,'��Ϣϵͳ',4)
INSERT INTO Course VALUES(11,'����ϵͳ',3)
INSERT INTO Course VALUES(12,'���ݽṹ',4)
INSERT INTO Course VALUES(13,'���ݴ���',2)
INSERT INTO Course VALUES(14,'pascal',4)
INSERT INTO Course VALUES(15,'���ݿ�',4)
INSERT INTO Course VALUES(16,'��ѧ',2)
INSERT INTO Course VALUES(17,'��Ϣϵͳ',4)
INSERT INTO Course VALUES(18,'����ϵͳ',3)
INSERT INTO Course VALUES(19,'���ݽṹ',4)
INSERT INTO Course VALUES(20,'���ݴ���',2)
INSERT INTO Course VALUES(21,'pascal',4)
INSERT INTO Course VALUES(22,'����ϵͳ',3)
INSERT INTO Course VALUES(23,'���ݽṹ',4)
INSERT INTO Course VALUES(24,'���ݴ���',2)
INSERT INTO Course VALUES(25,'pascal',4)


INSERT INTO sc VALUES(200215121,1,92)
INSERT INTO sc VALUES(200215121,2,85)
INSERT INTO sc VALUES(200215121,3,88)
INSERT INTO sc VALUES(200215122,2,90)
INSERT INTO sc VALUES(200215122,3,80)

INSERT INTO sc VALUES(200215121,1,92)
INSERT INTO sc VALUES(200215121,2,85)
INSERT INTO sc VALUES(200215121,3,88)
INSERT INTO sc VALUES(200215122,2,90)
INSERT INTO sc VALUES(200215122,3,80)
SELECT *FROM sc
--����ѯȫ��ѧ����ѧ����������
SELECT a.sno,a.sname
from Student a




--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT a.sname,a.sno,a.sdept
from Student a



--3����ȫ��ѧ�����������������ݡ�




--��ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT *
FROM SC a



--5����ѯ�������ѧϵȫ��ѧ����������

SELECT a.sname
from Student a
where a.sdept='cs'




--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT a.sname,a.sage
from Student a
where a.sage<20



--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT a.sno
from SC a
where a.grade<60

--��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT a.sname,a.sdept,a.sage
from Student a
WHERE a.sage>=18 AND a.sage<=22



--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT a.sname,a.sdept,a.sage
from Student a
WHERE a.sage!=18 AND a.sage!=22

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
   SELECT a.sname,a.ssex 
   from Student a
   where a.sdept IN ('is','ma','cs')

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
 SELECT a.sname,a.ssex 
   from Student a
   where a.sdept NOT  IN ('is','ma','cs')



--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from Student a
where a.sno=09102040203


--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT  a.sname,a.ssex
from Student a
WHERE  a.sname LIKE '��%'
--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT a.sname
from Student a
WHERE a.sname LIKE '��__'
--��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT a.sname ,a.sno
from Student a
WHERE a.sname LIKE '_��_'
--����ѯ���в��ա��¡���ѧ��������
SELECT a.sname 
from Student a
WHERE a.sname NOT  LIKE '��%'