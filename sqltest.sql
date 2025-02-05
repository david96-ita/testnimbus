--Given starting setup--

CREATE OR REPLACE DATABASE nimbus_test;
USE DATABASE nimbus_test;

CREATE OR REPLACE WAREHOUSE my_wh with warehouse_size = 'SMALL';
USE WAREHOUSE my_wh;

--Given starting data --
CREATE TABLE public.data_table (column_1 int, column_2 int, column_3 int, join_id int);
INSERT INTO public.data_table (column_1,column_2,column_3,join_id)
VALUES (10,5,101,1),
(10,5,102,2),
(10,5,103,3),
(10,5,104,4),
(10,5,105,5),
(10,5,106,6),
(10,5,107,7),
(10,5,108,8),
(10,5,109,9),
(10,5,110,10),
(10,10,101,11),
(10,10,102,12),
(10,10,103,13),
(10,10,104,14),
(10,10,105,15),
(10,10,106,16),
(10,10,107,17),
(10,10,108,18),
(10,10,109,19),
(10,10,110,20),
(11,5,101,21),
(11,5,102,22),
(11,5,103,23),
(11,5,104,24),
(11,5,105,25),
(11,5,106,26),
(11,5,107,27),
(11,5,108,28),
(11,5,109,29),
(11,5,110,30),
(11,10,101,31),
(11,10,102,32),
(11,10,103,33),
(11,10,104,34),
(11,10,105,35),
(11,10,106,36),
(11,10,107,37),
(11,10,108,38),
(11,10,109,39),
(11,10,110,40);

CREATE TABLE public.email_table (join_id int, email string);
INSERT INTO public.email_table (join_id,email)
VALUES
(1,'1867945546@theinformationlab.nl'),
(2,'1867945540@theinformationlab.nl'),
(3,'1867945541@theinformationlab.nl'),
(4,'1867945542@theinformationlab.nl'),
(5,'1867945543@theinformationlab.nl'),
(6,'1867945544@theinformationlab.nl'),
(7,'1867945545@theinformationlab.nl'),
(8,'1867945547@theinformationlab.nl'),
(9,'1867945548@theinformationlab.nl'),
(10,'1867945549@theinformationlab.nl'),
(11,'1867945550@theinformationlab.nl'),
(12,'1867945551@theinformationlab.nl'),
(13,'1867945552@theinformationlab.nl'),
(14,'1867945553@theinformationlab.nl'),
(15,'1867945554@theinformationlab.nl'),
(16,'1867945555@theinformationlab.nl'),
(17,'1867945556@theinformationlab.nl'),
(18,'1867945557@theinformationlab.nl'),
(19,'1867945558@theinformationlab.nl'),
(20,'1867945559@theinformationlab.nl'),
(21,'1867945560@theinformationlab.nl'),
(22,'1867945561@theinformationlab.nl'),
(23,'1867945562@theinformationlab.nl'),
(24,'1867945563@theinformationlab.nl'),
(25,'1867945564@theinformationlab.nl'),
(26,'1867945565@theinformationlab.nl'),
(27,'1867945566@theinformationlab.nl'),
(28,'1867945567@theinformationlab.nl'),
(29,'1867945568@theinformationlab.nl'),
(30,'1867945569@theinformationlab.nl'),
(31,'1867945570@theinformationlab.nl'),
(32,'1867945571@theinformationlab.nl'),
(33,'1867945572@theinformationlab.nl'),
(34,'1867945573@theinformationlab.nl'),
(35,'1867945574@theinformationlab.nl'),
(36,'1867945575@theinformationlab.nl'),
(37,'1867945576@theinformationlab.nl'),
(38,'1867945577@theinformationlab.nl'),
(39,'1867945578@theinformationlab.nl'),
(40,'1867945579@theinformationlab.nl');

select public.data_table.join_id
from public.data_table
inner join public.email_table on public.email_table.join_id=public.data_table.join_id
