select *
from books 
--ˮ䰴������μǡ���������¥�Ρ�
--��������������簲ȫԭ��������+�������Ӳ�������ݿ�ԭ�� ��Щ�� (5��)
insert into books values(1,'ˮ䰴�','��һ',42,666)
insert into books values(2,'���μ�','����',36,456)
insert into books values(3,'����','����',88,555)
insert into books values(4,'��¥��','����',58,6447)
insert into books values(5,'���������','����',41,6942)
insert into books values(6,'���簲ȫ����','ȥ',415,7854)
insert into books values(7,'������+','��֪��',52,7412)
insert into books values(8,'�����Ӳ��','��',52,641)
insert into books values(9,'���ݿ�ԭ��','�廪',54,1584)
--1.	��ѯ��������"ԭ��"�ؼ��ʵ�ͼ�飬�����š����������ߡ�
select b.bno ,b.bname ,b.author 
from books  b
where  b.bname like '%ԭ��%'
--2.	��ѯ���ƽ���۸� 
select AVG (b.price )as'ƽ���۸�'
from books b 
--3.	������������Ȿ��Ŀ��������Ϊ20�����۸�Ϊ13.1
update books set quantity ='20',price ='13.1' where bname  ='���������'
--4.	��ѯ������Ŀ��һ���ж��� 
select sum (b.quantity )as'�������'
from books b
--5.	��ѯ�ı��鱻��Ĵ�����࣬��������ʹ���
select MAX (bw.cno ),b.bname ,bw .bno  
from books b inner join borrow bw
on b.bno = bw .bno 
--6.	��ѯ�������ֱ������Щ��
select bw.cno 
from  books b inner join borrow bw
on b.bno = bw. bno 
and b.bname = '��һ'
--7.	��ѯ�������ŵ��飬������Щ���߽��ģ�������������ߡ�����

--8.	��ѯ����ͼ���м۸���ߵ�ͼ�飬������������ߡ�
--9.	��ѯ��ǰ����"����"��û�н�"������+"�Ķ��ߣ��������鿨�ţ��������Ž������������

