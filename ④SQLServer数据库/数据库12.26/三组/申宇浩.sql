--1.查询书名包括"原理"关键词的图书，输出书号、书名、作者。
select a.bno,a.bname,a.author
from tsb a
where a.bname like'%原理%'
--2.查询书的平均价格  
select AVG(b.price)as'平均价格'
from tsb b
--3.将计算机基础这本书的库存数量改为20，单价改为13.1
update tsb set quantity = 20
update tsb set price=13.1
where bname='计算机基础'
--4.查询所有书的库存一共有多少 
select sum(quantity)as'所有书'
from tsb d
--6.查询高洁分别借了哪些书
select h.bname,g.name
from jsb f inner join jsk g on f.cno=g.cno
inner join tsb h
on f.bno=h.bno
and g.name='高洁'
--7.查询作者姓罗的书，都被哪些读者借阅，输出书名、作者、读者
select k.bname,k.author,j.name
from jsb i inner join jsk j on i.cno=j.cno
inner join tsb k
on i.bno=k.bno
and k.author like'罗%'
