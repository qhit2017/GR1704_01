SELECT *FROM student 
INSERT INTO  student   values (200215121,'����','��',20,'cs')
INSERT INTO  student   values (200215122,'��һ','Ů',21,'ma')
INSERT INTO  student   values (200215123,'���','��',22,'is')
INSERT INTO  student   values (200215124,'����','Ů',23,'cs')
INSERT INTO  student   values (200215125,'����','Ů',24,'ma')
INSERT INTO  student   values (200215126,'����','��',25,'is')
INSERT INTO  student   values (200215127,'����','Ů',26,'ma')
INSERT INTO  student   values (200215128,'����','��',27,'cs')
INSERT INTO  student   values (200215129,'���','��',28,'is')
INSERT INTO  student   values (200215130,'���','Ů',29,'cs')
INSERT INTO  student   values (200215131,'����','��',19,'ma')
INSERT INTO  student   values (200215132,'����','��',20,'cs')
INSERT INTO  student   values (200215133,'����','Ů',22,'cs')
INSERT INTO  student   values (200215134,'��1','��',25,'ma')
INSERT INTO  student   values (200215135,'��2','Ů',23,'cs')
INSERT INTO  student   values (200215136,'��3','��',29,'ma')
INSERT INTO  student   values (200215137,'��4','��',24,'cs')
INSERT INTO  student   values (200215138,'��5','Ů',21,'is')
INSERT INTO  student   values (200215139,'��6','��',27,'cs')
INSERT INTO  student   values (200215140,'��7','Ů',26,'ma')
INSERT INTO  student   values (200215141,'��8','��',23,'cs')
INSERT INTO  student   values (200215142,'��9','��',20,'cs')
INSERT INTO  student   values (200215143,'����','��',19,'ma')
INSERT INTO  student   values (200215144,'Ԭ��','Ů',20,'cs')
INSERT INTO  student   values (200215145,'���','��',18,'cs')
INSERT INTO  student   values (200215146,'����','��',18,'cs')
INSERT INTO  student   values (200215147,'������','��',18,'cs')


SELECT *FROM course
INSERT INTO course VALUES (1,'���ݿ�',4)
INSERT INTO course VALUES (2,'���������',3)
INSERT INTO course VALUES (3,'��ѧ',5)
INSERT INTO course VALUES (4,'Ӣ��',7)
INSERT INTO course VALUES (5,'pascal����',3)
INSERT INTO course VALUES (6,'����',1)
INSERT INTO course VALUES (7,'�������ѧ',6)
INSERT INTO course VALUES (8,'��Ϣ',8)
INSERT INTO course VALUES (9,'���ݻ���',10)
INSERT INTO course VALUES (10,'���ݴ���',4)


SELECT *FROM sc
INSERT INTO sc VALUES (200215121,10,80)
INSERT INTO sc VALUES (200215131,2,81)
INSERT INTO sc VALUES (200215141,2,82)
INSERT INTO sc VALUES (200215122,10,83)
INSERT INTO sc VALUES (200215128,8,84)
INSERT INTO sc VALUES (200215127,5,85)
INSERT INTO sc VALUES (200215126,7,86)
INSERT INTO sc VALUES (200215129,8,80)
INSERT INTO sc VALUES (200215130,10,82)
INSERT INTO sc VALUES (200215132,6,88)
INSERT INTO sc VALUES (200215140,8,89)
INSERT INTO sc VALUES (200215141,4,80)
INSERT INTO sc VALUES (200215145,5,85)
INSERT INTO sc VALUES (200215144,6,87)
INSERT INTO sc VALUES (200215139,7,88)
INSERT INTO sc VALUES (200215120,2,90)
INSERT INTO sc VALUES (200215126,4,92)
INSERT INTO sc VALUES (200215135,6,32)
INSERT INTO sc VALUES (200215138,7,64)
INSERT INTO sc VALUES (200215140,8,76)
INSERT INTO sc VALUES (200215144,9,32)
INSERT INTO sc VALUES (200215137,2,34)
INSERT INTO sc VALUES (200215133,4,80)
INSERT INTO sc VALUES (200215132,8,88)

--��ѯȫ��ѧ����ѧ����������
SELECT s.sno ,s.sname 
from student s 
--��ѯȫ��ѧ����������ѧ�š�����ϵ
SELECT s.sname ,s.sno ,c.cname 
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno 
--��ȫ��ѧ�����������������ݡ�
SELECT s.sname ,2017-s.sage 
from student s 
--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT sc.sno ,c.cname 
from  sc sc  INNER JOIN course c ON c.cno =sc.cno 
--����ѯ�������ѧϵȫ��ѧ����������
SELECT s.sname 
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno
AND c.cname ='�������ѧ'
--����ѯ����������20�����µ�ѧ�������������䡣
SELECT s.sname ,s.sage 
from student s 
WHERE s.sage <20
--����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT sc.sno 
from sc sc
WHERE sc.grade <60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT s.sname ,c.cname ,s.sage 
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno
WHERE s.sage  between 18 AND 22
--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT s.sname ,c.cname ,s.sage 
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno
WHERE s.sage NOT  between 18 AND 22
--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT s.sname ,s.ssex 
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno
WHERE c.cname ='��Ϣ'OR  c.cname ='��ѧ'OR  c.cname ='�������ѧ'

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT s.sname ,s.ssex 
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno
WHERE c.cname !='��Ϣ'AND   c.cname !='��ѧ'AND  c.cname !='�������ѧ'

--12����ѯѧ��Ϊ200215121��ѧ������ϸ���
SELECT *
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno
where s.sno =200215121
--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT s.sname ,s.sno ,s.ssex 
from student s
where s.sname LIKE '��%'
--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT s.sname 
from student s
where s.sname LIKE '��__'
--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT s.sname ,s.sno 
from student s
where s.sname LIKE '_��_'
--16����ѯ���в��ա��¡���ѧ��������
SELECT s.sname  
from student s
where s.sname NOT  LIKE '��%'
--17����ѯ ���ݴ��� �γ̵Ŀγ̺ź�ѧ�֡�
SELECT c.cno ,sc.grade 
from course c INNER JOIN sc sc ON c.cno =sc.cno 
where c.cname ='���ݴ���'
--