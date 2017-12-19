Create table shebei(
id int,
name nvarchar(10),
date datetime,
way nvarchar(10),
)
insert into shebei values(1,'照相机','2010-1-1','拍照');
insert into shebei values(2,'打印机','2011-1-1','打印');
insert into shebei values(3,'手机','2016-1-7','玩游戏');
insert into shebei values(4,'投影仪','2014-1-1','玩游戏');
insert into shebei values(5,'PC','2013-8-1','玩游戏');
insert into shebei values(6,'平板','2018-1-1','玩游戏');
insert into shebei values(7,'笔记本电脑','2010-9-1','玩游戏');
insert into shebei values(8,'电视','2014-1-1','玩游戏');
insert into shebei values(9,'PSP','2011-1-9','玩游戏');
insert into shebei values(10,'Xbox','2013-7-18','玩游戏');
select * from shebei
Delete from shebei
Delete from shebei where name='打印机' or name='照相机'
Delete from shebei where date='2010-1-1'