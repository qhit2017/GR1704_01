--创建设备表，字段包括设备id,设备名称，购买日期，用途
--1 插入10个设备，包括打印机，相机等
--2 删除设备表的所有数据
--3 删除设备表中设备名称为打印机和照相机的设备
--4 删除设备表中购买日期为'2010-1-1'的记录

insert into taoge(id,name,riqi,yt)values(1,'单反','2001-6-3','耍帅')
insert into taoge values(2,'手机','2008-6-9','联系家长')
insert into taoge values(3,'电脑','2009-5-6','敲代码')
insert into taoge values(4,'汽车','2015-12-13','耍妞')
insert into taoge values(5,'摩托','2013-5-9','追求速度')
insert into taoge values(6,'吃鸡','2017-10-20','娱乐')
insert into taoge values(7,'键盘','2017-6-3','游戏')
insert into taoge values(8,'音响','2009-8-6','听歌')
insert into taoge values(9,'显示器','2017-6-3','看电影')
insert into taoge values(10,'空调','2017-6-5','取暖')
delete from taoge 
select *from taoge
delete from taoge where name='手机' and '摩托'
delete from taoge where riqi='2017-6-5'