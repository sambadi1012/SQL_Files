CREATE DATABASE LIBRARY;
USE LIBRARY;
CREATE TABLE BOOKS
(BOOK_ID varchar(5) not null primary key,
BOOK_NAME varchar(30),
AUTHOR_NAME varchar(30),
PUBLISHERS varchar(10),
PRICE int,
BOOK_TYPE varchar(10),
QUANTITY int);

INSERT INTO BOOKS
VALUES('C0001','Fast Cook','Lata Kapoor','EPB','355','Cookery','5');
INSERT INTO BOOKS
VALUES('F0001','The Tears','William Hopkins','First Pub','650','Fiction','20');
INSERT INTO BOOKS
VALUES('T0001','My First C++','Brian and Brooke','EPB','350','Text','10');
INSERT INTO BOOKS
VALUES('T0002','C++ Brainworks','A.W. Rossaine','TDH','350','Text','15');
INSERT INTO BOOKS
VALUES('F0002','Thunderbolts','Anna Roberts','First Pub','750','Fiction','50');

CREATE TABLE ISSUED
(BOOK_ID varchar(5) NOT NULL PRIMARY KEY,
QUANTITY_ISSUED int,
foreign key(BOOK_ID) references BOOKS(BOOK_ID)
);
INSERT INTO ISSUED
VALUES('T0001','4');
INSERT INTO ISSUED
VALUES('C0001','5');
INSERT INTO ISSUED
VALUES('F0001','2');

Select BOOK_NAME, AUTHOR_NAME, PRICE FROM BOOKS WHERE PUBLISHERS LIKE 'First Pub';
Select BOOK_NAME FROM BOOKS WHERE BOOK_TYPE LIKE 'Text';
Select BOOK_NAME, PRICE FROM BOOKS ORDER BY PRICE;
Update BOOKS SET PRICE=PRICE+50 WHERE PUBLISHERS = 'EPB';
INSERT INTO ISSUED VALUES('F0002','4');
Select BOOK_ID, BOOK_NAME, QUANTITY_ISSUED FROM BOOKS, ISSUED where BOOKS.BOOKID = ISSUED.BOOKID;