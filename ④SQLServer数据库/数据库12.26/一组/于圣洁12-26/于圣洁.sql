select *
from books 
--水浒传、西游记、三国、红楼梦、
--计算机基础、网络安全原理、互联网+、计算机硬件、数据库原理 这些书 (5分)
insert into books values(1,'水浒传','王一',42,666)
insert into books values(2,'西游记','王二',36,456)
insert into books values(3,'三国','张三',88,555)
insert into books values(4,'红楼梦','李四',58,6447)
insert into books values(5,'计算机基础','张五',41,6942)
insert into books values(6,'网络安全管理','去',415,7854)
insert into books values(7,'互联网+','不知道',52,7412)
insert into books values(8,'计算机硬件','我',52,641)
insert into books values(9,'数据库原理','清华',54,1584)
--1.	查询书名包括"原理"关键词的图书，输出书号、书名、作者。
select b.bno ,b.bname ,b.author 
from books  b
where  b.bname like '%原理%'
--2.	查询书的平均价格 
select AVG (b.price )as'平均价格'
from books b 
--3.	将计算机基础这本书的库存数量改为20，单价改为13.1
update books set quantity ='20',price ='13.1' where bname  ='计算机基础'
--4.	查询所有书的库存一共有多少 
select sum (b.quantity )as'库存数量'
from books b
--5.	查询哪本书被借的次数最多，输出书名和次数
select MAX (bw.cno ),b.bname ,bw .bno  
from books b inner join borrow bw
on b.bno = bw .bno 
--6.	查询陈启航分别借了哪些书
select bw.cno 
from  books b inner join borrow bw
on b.bno = bw. bno 
and b.bname = '王一'
--7.	查询作者姓张的书，都被哪些读者借阅，输出书名、作者、读者

--8.	查询现有图书中价格最高的图书，输出书名及作者。
--9.	查询当前借了"三国"但没有借"互联网+"的读者，输出其借书卡号，并按卡号降序排序输出。

