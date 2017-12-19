select * from  sk;
insert into sk ( id,mingcheng,rqi,yongtu) values (1,'打印机','2015-9-12','打印东西')
insert into sk ( id,mingcheng,rqi,yongtu) values (2,'相机','2015-9-13','照相')
insert into sk ( id,mingcheng,rqi,yongtu) values (3,'手机','2015-9-14','打电话')
insert into sk ( id,mingcheng,rqi,yongtu) values (4,'床','2015-9-15','睡觉')
insert into sk ( id,mingcheng,rqi,yongtu) values (5,'水','2015-9-16','喝')
insert into sk ( id,mingcheng,rqi,yongtu) values (6,'设备','2010-1-1','打印东西')
insert into sk ( id,mingcheng,rqi,yongtu) values (7,'设备2','2015-1-2','打印东西')
insert into sk ( id,mingcheng,rqi,yongtu) values (8,'设备3','2015-1-3','打印东西')
insert into sk ( id,mingcheng,rqi,yongtu) values (9,'设备4','2015-1-4','打印东西')
insert into sk ( id,mingcheng,rqi,yongtu) values (10,'设备5','2015-1-5','打印东西')


insert into sk  select  *   from  sk
select * from sk 
delete from  sk where  mingcheng ='打印机'  or mingcheng= '相机'
delete from sk where   rqi='2010-1-1'
 





