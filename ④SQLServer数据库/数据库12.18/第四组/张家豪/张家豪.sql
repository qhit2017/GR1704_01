select * from wupin  

insert into wupin (wupinid,wupinmingcheng,goumairiqi,yongtu)values(1,'鼠标','2008-9-8','控制')
insert into wupin (wupinid,wupinmingcheng,goumairiqi,yongtu)values(2,'键盘','2008-9-8','输入打字')
insert into wupin (wupinid,wupinmingcheng,goumairiqi,yongtu)values(3,'显示器','2008-9-8','显示东西')
insert into wupin (wupinid,wupinmingcheng,goumairiqi,yongtu)values(4,'硬盘','2008-9-8','储存东西')
insert into wupin (wupinid,wupinmingcheng,goumairiqi,yongtu)values(5,'cpu','2008-9-8','电脑的核心部位')
insert into wupin (wupinid,wupinmingcheng,goumairiqi,yongtu)values(6,'显卡','2008-9-8','显示和处理图像')
insert into wupin (wupinid,wupinmingcheng,goumairiqi,yongtu)values(7,'内存条','2008-9-8','电脑数据储存和交换的地方')
insert into wupin (wupinid,wupinmingcheng,goumairiqi,yongtu)values(8,'声卡','2008-9-8','处理声音')
insert into wupin (wupinid,wupinmingcheng,goumairiqi,yongtu)values(9,'光笔','2006-9-8','电脑输入')
insert into wupin (wupinid,wupinmingcheng,goumairiqi,yongtu)values(10,'打印机','2004-9-8','打印纸张')

select * from wupin  

delete from wupin

delete from wupin where wupinmingcheng='键盘'or  wupinmingcheng='鼠标'

delete from wupin where goumairiqi='2010-1-1'