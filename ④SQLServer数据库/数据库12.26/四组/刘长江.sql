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
from tsb c
--5.查询哪本书被借的次数最多，输出书名和次数
select MAX(e.bno)
from jsb d inner join tsb e
on d.bno=e.bno

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
--8.查询现有图书中价格最高的图书，输出书名及作者。
select m.bname,m.author
from tsb m
where m.quantity=(select MAX(l.quantity)
from tsb l)
--9.查询当前借了"三国"但没有借"互联网+"的读者，输出其借书卡号，并按卡号降序排序输出。

--10.查询当前同时借有"互联网+"和"网络安全原理"两本书的读者，输出其借书卡号，并按卡号升序排序输出。
--11.找出借书超过5本的读者,输出借书卡号及所借图书册数。
--12.查询借阅了"水浒传"一书的读者，输出姓名及班级。
--13.查询过期(离2017-12-30大于30天)未还图书，输出借阅者（卡号）、书号及借书日期。