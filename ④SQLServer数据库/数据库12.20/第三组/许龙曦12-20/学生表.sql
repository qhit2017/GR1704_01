INSERT INTO xsb VALUES(1,'����','��',17,'�������ѧ',90)
INSERT INTO xsb VALUES(2,'����','��',16,'�������ѧ',90)
INSERT INTO xsb VALUES(3,'����','��',20,'��ѧϵ',80)
INSERT INTO xsb VALUES(4,'����','Ů',18,'��ѧϵ',92)
INSERT INTO xsb VALUES(5,'������','Ů',17,'��ѧϵ',50)
INSERT INTO xsb VALUES(6,'����','��',19,'�������ѧ',70)
INSERT INTO xsb VALUES(7,'����','��',19,'��ѧϵ',90)
INSERT INTO xsb VALUES(8,'����','��',18,'��ѧϵ',97)
INSERT INTO xsb VALUES(9,'�����','��',21,'�������ѧ',100)
INSERT INTO xsb VALUES(10,'���','��',20,'�������ѧ',58)
INSERT INTO xsb VALUES(11,'С��','Ů',17,'��ѧϵ',92)
INSERT INTO xsb VALUES(12,'����','Ů',21,'it',93)
INSERT INTO xsb VALUES(13,'�ŷ�','��',20,'it',70)
INSERT INTO xsb VALUES(14,'����','��',16,'��ѧϵ',80)
INSERT INTO xsb VALUES(15,'�ܲ�','��',20,'it',100)
INSERT INTO xsb VALUES(16,'����','��',18,'�������ѧ',90)
INSERT INTO xsb VALUES(17,'����','Ů',21,'it',95)
INSERT INTO xsb VALUES(18,'������','��',19,'��ѧϵ',100)
INSERT INTO xsb VALUES(19,'��Ԫ��','��',19,'it',100)
INSERT INTO xsb VALUES(20,'������','Ů',19,'it',91)

SELECT*FROM xsb
DELETE FROM xsb

--1.��ѯȫ��ѧ����ѧ����������
SELECT  a.sno, a.sname
FROM xsb a 
--2.��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT a.sname,a.sno,a.sdept
from xsb a
--3.��ȫ��ѧ���������������䡣
SELECT a.sname,a.sage
from xsb a
--4.��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT *
from xsb WHERE sdept='�������ѧ'
--5.��ѯ����������20�����µ�ѧ��������������
SELECT *
FROM xsb WHERE sage<20
--6.��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT a.sname,a.sage,a.grade
from xsb a WHERE a.sage<18 ORDER BY a.grade
--7.��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT a.sno,a.grade 
from xsb a WHERE a.grade<60  ORDER BY a.grade desc
--8.��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT a.sname,a.sdept,a.sage
from xsb a WHERE a.sage>=18 AND a.sage<=22
--9.��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
SELECT a.sname,a.sdept,a.sage
from xsb a WHERE NOT(a.sage>=20 AND a.sage<=23  )
--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT a.sname,a.ssex,a.sdept
from xsb a
 WHERE a.sdept='��Ϣϵ'OR a.sdept='��ѧϵ' OR a.sdept='�������ѧ'
--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT a.sname,a.ssex,a.sdept
from xsb a WHERE NOT(a.sdept='��ѯ��Ϣϵ'OR a.sdept='��ѧϵ' OR a.sdept='�������ѧ' )
--12.��ѯѧ��Ϊ09102040203��ѧ������ϸ���
SELECT a.sno,a.sname,a.ssex,a.sage,a.sdept,a.grade
from xsb a
WHERE a.sno=09102040203
--13.��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.sname,a.sno,a.ssex
from xsb a
WHERE a.sname LIKE'��%'
--14.��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������
SELECT a.sname
from xsb a
WHERE a.sname LIKE'��%'
--15.��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ��
SELECT a.sname,a.sno
from xsb a
WHERE a.sname LIKE'%��%'
--16.	��ѯ���в��ա��¡���ѧ��������
SELECT a.sname
from xsb a WHERE NOT(a.sname LIKE'��%')