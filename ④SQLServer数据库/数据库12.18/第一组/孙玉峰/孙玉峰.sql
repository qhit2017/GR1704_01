Create table shebei(
id int,
name nvarchar(10),
date datetime,
way nvarchar(10),
)
insert into shebei values(1,'�����','2010-1-1','����');
insert into shebei values(2,'��ӡ��','2011-1-1','��ӡ');
insert into shebei values(3,'�ֻ�','2016-1-7','����Ϸ');
insert into shebei values(4,'ͶӰ��','2014-1-1','����Ϸ');
insert into shebei values(5,'PC','2013-8-1','����Ϸ');
insert into shebei values(6,'ƽ��','2018-1-1','����Ϸ');
insert into shebei values(7,'�ʼǱ�����','2010-9-1','����Ϸ');
insert into shebei values(8,'����','2014-1-1','����Ϸ');
insert into shebei values(9,'PSP','2011-1-9','����Ϸ');
insert into shebei values(10,'Xbox','2013-7-18','����Ϸ');
select * from shebei
Delete from shebei
Delete from shebei where name='��ӡ��' or name='�����'
Delete from shebei where date='2010-1-1'