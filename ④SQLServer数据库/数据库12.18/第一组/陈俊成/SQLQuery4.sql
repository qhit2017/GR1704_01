--1 插入10个设备，包括打印机，相机等
insert  into ahebeibiao values(1,'打印机','2001-1-1','打印')
insert  into ahebeibiao values(2,'相机','2002-02-01','拍照')
insert  into ahebeibiao values(3,'手机','2003-02-01','打电话')
insert  into ahebeibiao values(4,'Mp3','2004-02-01','听歌')
insert  into ahebeibiao values(5,'电脑','2001-1-1','办公')
insert  into ahebeibiao values(6,'投影仪','2006-02-01','投影')
insert  into ahebeibiao values(7,'灯','2007-02-01','照明')
insert  into ahebeibiao values(8,'车','2008-02-01','运输')
insert  into ahebeibiao values(9,'血压仪','2009-02-01','测量血压')
insert  into ahebeibiao values(10,'吹风机','2010-02-01','吹干')

delete  from ahebeibiao


select *from ahebeibiao

delete  from  ahebeibiao where shebeimingcheng='打印机' or   shebeimingcheng='相机'

delete  from  ahebeibiao where riqi='2001-1-1'
