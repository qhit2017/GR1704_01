insert into shebeibiao(shebeiid,shebeimingcheng,goumairiqi,yongtu)values(1,'扫描仪','2003-9-8','电脑输入');
insert into shebeibiao(shebeiid,shebeimingcheng,goumairiqi,yongtu)values(2,'打印机','2004-9-8','打印纸张');
insert into shebeibiao(shebeiid,shebeimingcheng,goumairiqi,yongtu)values(3,'相机','2005-9-8','拍照');
insert into shebeibiao(shebeiid,shebeimingcheng,goumairiqi,yongtu)values(4,'光笔','2006-9-8','电脑输入');
insert into shebeibiao(shebeiid,shebeimingcheng,goumairiqi,yongtu)values(5,'耳机','2007-9-8','音频输出');
insert into shebeibiao(shebeiid,shebeimingcheng,goumairiqi,yongtu)values(6,'鼠标','2008-9-8','控制');
insert into shebeibiao(shebeiid,shebeimingcheng,goumairiqi,yongtu)values(7,'键盘','2009-9-8','电脑输入');
insert into shebeibiao(shebeiid,shebeimingcheng,goumairiqi,yongtu)values(8,'感应板','2010-1-1','输入');
insert into shebeibiao(shebeiid,shebeimingcheng,goumairiqi,yongtu)values(9,'无线路由器','2011-9-8','wifi信号');
insert into shebeibiao(shebeiid,shebeimingcheng,goumairiqi,yongtu)values(10,'显卡','2012-9-8','屏幕画质');

select * from shebeibiao  

delete from shebeibiao

delete from shebeibiao where shebeimingcheng='打印机'or  shebeimingcheng='相机'

delete from shebeibiao where goumairiqi='2010-1-1'
