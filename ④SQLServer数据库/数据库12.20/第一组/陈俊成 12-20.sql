
--1.	��ѯȫ��ѧ����ѧ����������
SELECT *FROM xinxi

--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT q.xingming,q.xuehao,q.zhuanye
from xinxi q

--3.	��ȫ��ѧ���������������䡣
SELECT w.xingming,w.nianling
from xinxi w




--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT*
from xinxi e
WHERE e.zhuanye='�������ѧ'


--5.	��ѯ����������20�����µ�ѧ�������������䡣
SELECT*
from xinxi r
where r.nianling<20


--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT *
from xinxi a
WHERE a.nianling<18 ORDER BY a.chengji



--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT  s.xuehao
from xinxi s
where s.chengji<60  order BY s.xuehao DESC

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT z.xingming,z.zhuanye,z.nianling
from xinxi z
WHERE z.nianling>=18AND z.nianling<=22



--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
SELECT d.xingming,d.zhuanye,d.nianling
from xinxi d
where d.nianling!=20AND d.nianling!=21AND d.nianling!=22 AND d.nianling!=23



--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT x.xingming,x.xingbie
from xinxi x
where x.zhuanye='��Ϣ'OR x.zhuanye='��ѧ'OR x.zhuanye='�������ѧ'



--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT v.xingming,v.xingbie
from xinxi v
where v.zhuanye!='��Ϣ'OR v.zhuanye!='��ѧ' OR v.zhuanye!='�������ѧ'


--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from xinxi b
where b.xuehao=91020




--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT*
from xinxi m
WHERE m.xingming LIKE'��%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT*
from xinxi p
WHERE p.xingming LIKE'��__'


--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT *
from xinxi g
where g.xingming='_��_'


--16.	��ѯ���в��ա��¡���ѧ��������


SELECT*
from xinxi j
where j.xingming!='��%'

