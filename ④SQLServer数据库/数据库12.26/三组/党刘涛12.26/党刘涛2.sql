--借书记录表 BORROW： （CNO 借书卡号，BNO 书号，JDATE 借书日期）
INSERT INTO BORROW VALUES(101,301,'2017-12-1')
INSERT INTO BORROW VALUES(102,302,'2017-12-2')
INSERT INTO BORROW VALUES(103,303,'2017-12-3')
INSERT INTO BORROW VALUES(104,304,'2017-12-4')
INSERT INTO BORROW VALUES(105,305,'2017-12-5')
INSERT INTO BORROW VALUES(106,306,'2017-12-6')
INSERT INTO BORROW VALUES(107,307,'2017-12-7')
INSERT INTO BORROW VALUES(108,308,'2017-12-8')
INSERT INTO BORROW VALUES(109,309,'2017-12-9')
INSERT INTO BORROW VALUES(110,301,'2017-12-10')
INSERT INTO BORROW VALUES(111,301,'2017-12-11')
INSERT INTO BORROW VALUES(112,308,'2017-12-12')
INSERT INTO BORROW VALUES(113,304,'2017-12-13')
INSERT INTO BORROW VALUES(114,302,'2017-12-14')
INSERT INTO BORROW VALUES(115,306,'2017-12-15')
INSERT INTO BORROW VALUES(116,306,'2017-12-16')
INSERT INTO BORROW VALUES(117,304,'2017-12-17')
INSERT INTO BORROW VALUES(118,302,'2017-12-26')
INSERT INTO BORROW VALUES(119,305,'2017-12-18')
INSERT INTO BORROW VALUES(120,301,'2017-12-19')
INSERT INTO BORROW VALUES(108,307,'2017-12-26')
INSERT INTO BORROW VALUES(106,306,'2017-12-20')
INSERT INTO BORROW VALUES(108,305,'2017-12-26')
INSERT INTO BORROW VALUES(102,309,'2017-12-22')
INSERT INTO BORROW VALUES(103,301,'2017-12-24')
INSERT INTO BORROW VALUES(109,308,'2017-12-15')
INSERT INTO BORROW VALUES(108,306,'2017-12-15')
INSERT INTO BORROW VALUES(105,305,'2017-12-29')
INSERT INTO BORROW VALUES(107,309,'2017-12-28')
INSERT INTO BORROW VALUES(103,301,'2017-12-23')
INSERT INTO BORROW VALUES(104,305,'2017-12-26')
SELECT *FROM BORROW q INNER JOIN [Books table] a ON q.bno =a.bno

SELECT *FROM CARD