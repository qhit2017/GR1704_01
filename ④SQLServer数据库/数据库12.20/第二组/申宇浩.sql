DELETE FROM ZY222

SELECT *FROM ZY222

--1.	��ѯȫ��ѧ����ѧ��������
 SELECT a.XH,a.XM
from ZY222 a

--2.	��ѯȫ��ѧ����������ѧ�š�רҵ
SELECT b.XM,b.XH,b.ZYM
FROM ZY222 b

--3.	��ȫ��ѧ����������������
SELECT c.XM,c.NL
FROM ZY222 c 

--4.	��ѯ���������ѧ��רҵȫ��ѧ��������

SELECT * FROM ZY222 WHERE ZYM LIKE '�������ѧ'

--5.	��ѯ����������20�����µ�ѧ��������������
select XM ,NL
from ZY222 where NL<20

--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT XM,NL,CJ
FROM ZY222 WHERE NL<18
ORDER BY CJ ASC
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT XM
FROM ZY222 WHERE CJ<60
ORDER BY CJ DESC

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT XM,ZYM,NL
FROM ZY222 WHERE NL<22 AND NL>18
--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
select Sname,Sdept,Sage
from Student2 where Sage<20 and Sage>23

---10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
select Sname ,Ssex
from Student2 
where Sdept='��Ϣ'  or Sdept ='��ѧ' or Sdept = '�������ѧ'

--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
select Sname,Sage
from Student2
where Sdept!='��Ϣ' and Sdept!='��ѧ'and Sdept!='�������ѧ'

--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
select * 
from Student2 where Sno=09102040203

--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
select Sname ,Sno ,Ssex
from Student2 
where Sname like '��%%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
select Sname
from Student2
where Sname like '��__'

--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
select Sname ,Sno
from Student2
where Sname like '_��%'

--16.	��ѯ���в��ա��¡���ѧ��������
select Sname
from Student2
where Sname  not like '��%%'