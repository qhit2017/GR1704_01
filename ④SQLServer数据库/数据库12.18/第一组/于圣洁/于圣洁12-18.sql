select * from sebeibiao;
insert into sebeibiao (id,name,date,yongtu)values(1,'��ӡ��','2001-3-5','��ӡ����');
insert into sebeibiao (id,name,date,yongtu)values(2,'���','2002-6-7','����');
insert into sebeibiao values(3,'����','2003-7-6','д����');
insert into sebeibiao values(4,'���','2005-12-25','����');
insert into sebeibiao values (5,'����','2010-1-1','д��');
insert into sebeibiao values (6,'�豸һ','2001-01-17','��');
insert into sebeibiao values (7,'�豸��','2001-03-15','����');
insert into sebeibiao values (8,'�豸��','2010-1-1','��');
insert into sebeibiao values (9,'�豸��','2003-05-14','��');
insert into sebeibiao values (10,'�豸��','2005-02-04','˼');	

insert into newsebeibiao select * from sebeibiao
select * from newsebeibiao;  
delete from newsebeibiao;
delete from newsebeibiao where name='��ӡ��'or name='���';
delete from newsebeibiao where date='2010-1-1'

