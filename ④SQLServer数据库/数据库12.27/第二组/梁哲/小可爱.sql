--1����ѯȫ��ѧ����ѧ����������
SELECT A.Sno ,A.Sname 
FROM  Student A 
--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT A.Sname ,A.Sno ,A.Sdept 
FROM Student A
--3����ȫ��ѧ�����������������ݡ�
SELECT A.Sname ,2017-A.Sage 
FROM Student A
--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT S.Sno ,C.CName  
FROM SC A INNER JOIN Student  S ON A.Sno =A.Sno 
INNER JOIN Course  C ON A.Cno =A.Cno 
--5����ѯ�������ѧϵȫ��ѧ����������
SELECT  *
FROM Student s INNER JOIN Course c ON c.Cno = c.Cno 
WHERE c.CName ='�������ѧϵ'
--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT A.Sname , A.Sage 
FROM Student A
WHERE A.Sage <20
--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT A.Sno 
FROM SC A
WHERE A.Grade <60
--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT A.Sname ,A.Sdept ,A.Sage 
FROM Student A
WHERE A.Sage IN (18,22)
--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT A.Sname ,A.Sdept ,A.Sage 
FROM Student A
WHERE A.Sage NOT IN (20,23)
--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT A.Sname ,A.Ssex 
FROM Student  A
WHERE A.Sdept ='IS'OR A.Sdept ='MA'OR A.Sdept ='CS'
--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT A.Sname ,A.Ssex 
FROM Student A
WHERE A.Sdept NOT IN ('IS','MA','CS')
--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
FROM Student A
WHERE A.Sno =09102040203
--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.Sname ,A.Sno ,A.Ssex 
FROM Student A
WHERE A.Sname LIKE '��%'
--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT *
FROM Student B
WHERE B.Sname LIKE '��__'
--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT V.Sname ,v.Sno 
FROM Student V
WHERE V.Sname LIKE '_��%'
--16����ѯ���в��ա��¡���ѧ��������
SELECT *
FROM Student A
WHERE A.Sname NOT LIKE '��%'
--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT a.Cno ,a.Ccredit 
FROM Course A
WHERE A.CName ='DB_Design'
--22��	��ѯѧ����������
SELECT COUNT(A.Sno ) 
FROM Student A





