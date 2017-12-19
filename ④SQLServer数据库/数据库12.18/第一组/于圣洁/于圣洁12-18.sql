select * from sebeibiao;
insert into sebeibiao (id,name,date,yongtu)values(1,'打印机','2001-3-5','打印材料');
insert into sebeibiao (id,name,date,yongtu)values(2,'相机','2002-6-7','照相');
insert into sebeibiao values(3,'电脑','2003-7-6','写程序');
insert into sebeibiao values(4,'鼠标','2005-12-25','操作');
insert into sebeibiao values (5,'键盘','2010-1-1','写字');
insert into sebeibiao values (6,'设备一','2001-01-17','玩');
insert into sebeibiao values (7,'设备二','2001-03-15','哈哈');
insert into sebeibiao values (8,'设备三','2010-1-1','王');
insert into sebeibiao values (9,'设备四','2003-05-14','和');
insert into sebeibiao values (10,'设备五','2005-02-04','思');	

insert into newsebeibiao select * from sebeibiao
select * from newsebeibiao;  
delete from newsebeibiao;
delete from newsebeibiao where name='打印机'or name='相机';
delete from newsebeibiao where date='2010-1-1'

