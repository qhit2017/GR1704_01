INSERT INTO Student VALUES (1,'��һͨ','��',18,'�����',60);
INSERT INTO Student VALUES (2,'����ͨ','Ů',17,'�����',95);
INSERT INTO Student VALUES (3,'����ͨ','��',16,'�����',78);
INSERT INTO Student VALUES (4,'����ͨ','��',19,'����',68);
INSERT INTO Student VALUES (5,'����ͨ','Ů',14,'�赸',75);
INSERT INTO Student VALUES (6,'����ͨ','��',20,'�����',48);
INSERT INTO Student VALUES (7,'����ͨ','Ů',16,'��Ա',32);
INSERT INTO Student VALUES (8,'����ͨ','��',19,'��ľ����',69);
INSERT INTO Student VALUES (9,'����ͨ','Ů',18,'����',69);
INSERT INTO Student VALUES (10,'��ʮͨ','��',17,'����',92);
INSERT INTO Student VALUES (11,'����ͨ','Ů',15,'�����',18);
INSERT INTO Student VALUES (12,'��ǧͨ','��',15,'����',20);
INSERT INTO Student VALUES (13,'����ͨ','Ů',13,'�����',95);
INSERT INTO Student VALUES (14,'����ͨ','��',14,'�����',88);
INSERT INTO Student VALUES (15,'��ĳͨ','Ů',18,'Ӫ��',68);
INSERT INTO Student VALUES (16,'����ͨ','Ů',19,'ҽѧ',80);

SELECT a.sno,a.sname
FROM Student a

SELECT a.sno,a.sname,a.sdept
FROM Student a

SELECT a.sage,a.sname
FROM Student a

SELECT * FROM Student where sdept = '�����'

SELECT  a.sname,a.sage
FROM Student a where a.sage < 20

SELECT  a.sname,a.sage,a.grade
FROM Student a where a.sage < 18
ORDER BY a.grade

SELECT  a.sno,a.grade,a.sname
FROM Student a where a.grade < 60
ORDER BY a.grade

SELECT  a.sage,a.sdept,a.sname
FROM Student a WHERE a.sage between 18 and 22

SELECT  a.sage,a.sdept,a.sname
FROM Student a WHERE a.sage NOT between 18 and 22

SELECT  a.ssex,a.sname
FROM Student a WHERE a.sdept IN ('�����','�赸','����')

SELECT  a.ssex,a.sname
FROM Student a WHERE a.sdept not in('�����','�赸','����')

SELECT  *
FROM Student a where a.sno =10


SELECT  a.sno,a.sage,a.sname
FROM Student a where a.sname LIKE '��%'


SELECT  a.sno,a.sage,a.sname
FROM Student a where a.sname LIKE '��%__'

SELECT  a.sno,a.sage,a.sname
FROM Student a where a.sname LIKE '%��%'

SELECT  a.sno,a.sage,a.sname
FROM Student a where a.sname not LIKE '��%'

INSERT INTO Student VALUES (17,'���ڿ�','Ů',19,'ҽѧ',80);
