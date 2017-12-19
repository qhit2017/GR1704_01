select * from zuoye


insert into zuoye(id,name,riqi,purpose)	values(2,'计算器','2017-12-17','准确计算时间');

insert into zuoye(id,name,riqi,purpose)	values(3,'汽车','2010-12-17','代步工具');

insert into zuoye(id,name,riqi,purpose)	values(4,'锅','2010-1-1','做饭');

insert into zuoye(id,name,riqi,purpose)	values(5,'打印机','2010-1-1','打字');

insert into zuoye(id,name,riqi,purpose)	values(6,'相机','2010-1-1','记录生活');

insert into zuoye(id,name,riqi,purpose)	values(7,'厕所','2010-8-17','解决生活需要');

insert into zuoye(id,name,riqi,purpose)	values(8,'电脑','2000-12-17','搜索有价值信息');

insert into zuoye(id,name,riqi,purpose)	values(9,'洗脸盆','2015-12-17','洗漱');

insert into zuoye(id,name,riqi,purpose)	values(10,'床','2010-1-1','睡觉');

insert into zuoye(id,name,riqi,purpose)	values(11,'洗衣机','2013-12-17','洗衣服');

delete from zuoye

delete from zuoye where name = '打印机'or name='相机';

delete from zuoye where riqi='2010-1-1'