--删除设备表的所有数据
delete from ZY1
--删除设备表中设备名称为打印机和照相机的设备
delete from ZY1 where ID=1 or ID=2
--删除设备表中购买日期为'2010-1-1'的记录
delete from ZY1 where GMRQ=2010-1-1

select * from ZY1