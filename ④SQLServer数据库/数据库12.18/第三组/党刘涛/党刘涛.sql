--�����豸���ֶΰ����豸id,�豸���ƣ��������ڣ���;
--1 ����10���豸��������ӡ���������
--2 ɾ���豸�����������
--3 ɾ���豸�����豸����Ϊ��ӡ������������豸
--4 ɾ���豸���й�������Ϊ'2010-1-1'�ļ�¼

insert into taoge(id,name,riqi,yt)values(1,'����','2001-6-3','ˣ˧')
insert into taoge values(2,'�ֻ�','2008-6-9','��ϵ�ҳ�')
insert into taoge values(3,'����','2009-5-6','�ô���')
insert into taoge values(4,'����','2015-12-13','ˣ�')
insert into taoge values(5,'Ħ��','2013-5-9','׷���ٶ�')
insert into taoge values(6,'�Լ�','2017-10-20','����')
insert into taoge values(7,'����','2017-6-3','��Ϸ')
insert into taoge values(8,'����','2009-8-6','����')
insert into taoge values(9,'��ʾ��','2017-6-3','����Ӱ')
insert into taoge values(10,'�յ�','2017-6-5','ȡů')
delete from taoge 
select *from taoge
delete from taoge where name='�ֻ�' and 'Ħ��'
delete from taoge where riqi='2017-6-5'