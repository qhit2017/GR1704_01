--�����豸���ֶΰ����豸id,�豸���ƣ��������ڣ���;
--1 ����10���豸��������ӡ���������
--2 ɾ���豸�����������
--3 ɾ���豸�����豸����Ϊ��ӡ������������豸
--4 ɾ���豸���й�������Ϊ'2010-1-1'�ļ�¼

select * from shebei1

--1��
insert into shebei1 values(1,'��ӡ��','2010-1-1','��ӡ�ļ�');
insert into shebei1 values(2,'���','2010-1-1','����');
insert into shebei1 values(3,'�յ�','2017-12-18','ů��������');
insert into shebei1 values(4,'�յ�','2017-12-18','����ʳ��');
insert into shebei1 values(5,'���ӻ�','2017-12-18','���Ź���');
insert into shebei1 values(6,'����','2017-12-18','����');
insert into shebei1 values(7,'����','2017-12-18','����Ϸ');
insert into shebei1 values(8,'���̻�','2017-12-18','������');
insert into shebei1 values(9,'��ˮ��','2017-12-18','������ˮ');
insert into shebei1 values(10,'����̺','2017-12-18','ȡů');

--2��
delete from shebei1;

--3��
delete from shebei1 where name='��ӡ��' or name='���'

--4��
delete from shebei1 where shebeiriqi='2010-1-1'
