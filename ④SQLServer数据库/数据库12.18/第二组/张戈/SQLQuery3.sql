--创建设备表，字段包括设备id,设备名称，购买日期，用途
--1 插入10个设备，包括打印机，相机等
--2 删除设备表的所有数据
--3 删除设备表中设备名称为打印机和照相机的设备
--4 删除设备表中购买日期为'2010-1-1'的记录

select * from shebei1

--1、
insert into shebei1 values(1,'打印机','2010-1-1','打印文件');
insert into shebei1 values(2,'相机','2010-1-1','拍摄');
insert into shebei1 values(3,'空调','2017-12-18','暖气和冷气');
insert into shebei1 values(4,'空调','2017-12-18','保鲜食物');
insert into shebei1 values(5,'电视机','2017-12-18','新闻共享');
insert into shebei1 values(6,'风扇','2017-12-18','吹风');
insert into shebei1 values(7,'电脑','2017-12-18','打游戏');
insert into shebei1 values(8,'油烟机','2017-12-18','吸油烟');
insert into shebei1 values(9,'热水器','2017-12-18','加温凉水');
insert into shebei1 values(10,'电热毯','2017-12-18','取暖');

--2、
delete from shebei1;

--3、
delete from shebei1 where name='打印机' or name='相机'

--4、
delete from shebei1 where shebeiriqi='2010-1-1'
