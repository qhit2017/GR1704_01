INSERT INTO Student VALUES (1,'��һ��','��',18,'�����',60);
INSERT INTO Student VALUES (2,'������','Ů',17,'�����',95);
INSERT INTO Student VALUES (3,'������','��',16,'�����',78);
INSERT INTO Student VALUES (4,'���Ŀ�','��',19,'����',68);
INSERT INTO Student VALUES (5,'���念','Ů',14,'�赸',75);
INSERT INTO Student VALUES (6,'������','��',20,'�����',48);
INSERT INTO Student VALUES (7,'���߿�','Ů',16,'��Ա',32);
INSERT INTO Student VALUES (8,'���˿�','��',19,'��ľ����',69);
INSERT INTO Student VALUES (9,'���ſ�','Ů',18,'����',69);
INSERT INTO Student VALUES (10,'��ʮ��','��',17,'����',92);
INSERT INTO Student VALUES (11,'���ٿ�','Ů',15,'�����',18);
INSERT INTO Student VALUES (12,'��ǧ��','��',15,'����',20);
INSERT INTO Student VALUES (13,'����','Ů',13,'�����',95);
INSERT INTO Student VALUES (14,'������','��',14,'�����',88);
INSERT INTO Student VALUES (15,'��ĳ��','Ů',18,'Ӫ��',68);
INSERT INTO Student VALUES (16,'���ڿ�','Ů',19,'ҽѧ',80);
INSERT INTO Student VALUES (17,'��һͨ','��',18,'�����',60);
INSERT INTO Student VALUES (18,'����ͨ','Ů',17,'�����',95);
INSERT INTO Student VALUES (19,'����ͨ','��',16,'�����',78);
INSERT INTO Student VALUES (20,'����ͨ','��',19,'����',68);
INSERT INTO Student VALUES (21,'����ͨ','Ů',14,'�赸',75);
INSERT INTO Student VALUES (22,'����ͨ','��',20,'�����',48);
INSERT INTO Student VALUES (23,'����ͨ','Ů',16,'��Ա',32);
INSERT INTO Student VALUES (24,'����ͨ','��',19,'��ľ����',69);
INSERT INTO Student VALUES (25,'����ͨ','Ů',18,'����',69);
INSERT INTO Student VALUES (26,'��ʮͨ','��',17,'����',92);
INSERT INTO Student VALUES (27,'����ͨ','Ů',15,'�����',18);
INSERT INTO Student VALUES (28,'��ǧͨ','��',15,'����',20);
INSERT INTO Student VALUES (29,'����ͨ','Ů',13,'�����',95);
INSERT INTO Student VALUES (30,'����ͨ','��',14,'�����',88);
INSERT INTO Student VALUES (31,'��ĳͨ','Ů',18,'Ӫ��',68);
INSERT INTO Student VALUES (32,'����ͨ','Ů',19,'ҽѧ',80);

SELECT a.sdept,avg (a.grade) as 'ƽ����' 
from Student a
GROUP by a.sdept
ORDER by avg (a.grade) desc


SELECT a.ssex,avg (a.grade) as 'ƽ����' 
from Student a
GROUP by a.ssex

SELECT a.sdept,max (a.grade) as '��߷�' 
from Student a
GROUP by a.sdept

SELECT a.sdept,count(*) as'����'
from Student a
GROUP by a.sdept

SELECT a.sdept,avg (a.grade) as 'ƽ����' 
from Student a
GROUP by a.sdept

