SELECT *FROM xinxi
--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������

SELECT d.xuehao, d.xingming
from xinxi d
where d.chengji is null



--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT   a.zhuanye, AVG(a.chengji)AS'ƽ����'
from  xinxi a
GROUP BY a.zhuanye




--3.	�������гɼ���ѧ����ѧ�ź�������
SELECT b.xuehao,b.xingming
from xinxi b
WHERE b.chengji is NOT NULL


--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
SELECT*
from xinxi c
ORDER BY c.zhuanye ASC ,c.nianling desc






--5.	��ѯѧ����������
SELECT COUNT(e.xuehao)as'������'
from xinxi e





--6.	��ѯ������Ů����������
SELECT f.xingbie,  COUNT(f.xingbie)
from xinxi f
GROUP BY f.xingbie


--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
SELECT  g.zhuanye,  AVG(g.chengji)as'ƽ���ɼ�'
from xinxi g
GROUP BY g.zhuanye,g.chengji
ORDER BY g.chengji DESC



--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
SELECT  h.zhuanye , MAX(h.chengji)
from xinxi h
GROUP BY h.zhuanye


--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���

SELECT  j.zhuanye , MIN(j.chengji)
from xinxi j
GROUP BY j.zhuanye



--10.	��ѯƽ���ɼ�����רҵ�����֡�
SELECT k.zhuanye   ,MIN(k.chengji)as'ƽ���ɼ�'
from xinxi k
GROUP BY k.zhuanye


--11.	��ѯ������Ů����ƽ���ɼ���
SELECT l.xingbie,AVG(l.chengji)as'ƽ���ɼ�'
from xinxi l
group BY l.xingbie


--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���




--13.	��ѯרҵѧ����������50�˵�רҵ����




--14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����



