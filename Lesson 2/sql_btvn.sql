use `website`;
drop table if exists `product`;
create table `product`(
    productId nvarchar(10) primary key,
    displayName nvarchar(100),
    priceIn int,
    --
    priceOut int,
    provider nvarchar(100),
    category nvarchar(10),
    salePercent int,
    salePrice int,
    `categoryId` nvarchar(10),
    imageURL nvarchar(100)
);
select *
from `product`
INSERT INTO `product`
VALUES (
        'S1',
        'bikini',
        2,
        3,
        'huupro',
        'ao tam',
        4,
        5,
        'k1',
        'khong co'
    );
INSERT INTO `product`
VALUES (
        'S2',
        'quan dui',
        6,
        7,
        'huupro',
        'quan tam',
        4,
        5,
        'k2',
        'khong co'
    );
UPDATE product
SET displayName = 'bikini s10+'
WHERE productId = 'S1';
DELETE FROM product
WHERE productId = 'S1';
create table `user`(
    `userId` nvarchar(10) primary key,
    `username` nvarchar(100),
    `displayName` nvarchar(100),
    `email` nvarchar(100),
    `phone` nvarchar(100),
    `password` nvarchar(100),
    `birthday` date,
    `status` int,
    `avatar` nvarchar(100),
    `role` int
);
select *
from `user`
INSERT INTO `user`
VALUES (
        'M1',
        'pham quang hu',
        'huu',
        'phamhuu.a2.zip@gmail.com',
        '0961580259',
        '123',
        '2008-11-11',
        1,
        'khong co',
        1
    );
INSERT INTO `user`
VALUES (
        'M2',
        'donal trump',
        'chum',
        'chum.a2.zip@gmail.com',
        '0912345667',
        '123',
        '2003-10-10',
        1,
        'khong co',
        1
    );
UPDATE `user`
SET displayName = 'huu dep trai'
WHERE userId = 'M1';
DELETE FROM `user`
WHERE userId = 'M1';
create table `order`(
    `orderId` nvarchar(10) primary key,
    `userId` nvarchar(10),
    -- syntax 
    `ship` int,
    `status` nvarchar(100)
);
select *
FROM `order`
INSERT INTO `order`
VALUES ('H1', 'M1', 1, 'khong');
INSERT INTO `order`
VALUES ('H2', 'M2', 2, 'khong');
UPDATE `order`
SET ship = 3
WHERE orderId = 'H1';
DELETE FROM `order`
WHERE orderId = 'H1';
create table `orderDetail`(
    `orderId` nvarchar(10),
    `productId` nvarchar(10),
    `quantity` int,
    `price` int
);
select *
from `orderDetail`
INSERT INTO `orderDetail`
VALUES ('H1', 'S1', 2, 10);
INSERT INTO `orderDetail`
VALUES ('H2', 'S2', 2, 10);
UPDATE `orderDetail`
SET quantity = 3
WHERE orderId = 'H1';
DELETE FROM `orderDetail`
WHERE orderId = 'H1';
create table `category`(
    `categoryId` nvarchar(10) primary key,
    `imageURL` nvarchar(100),
    `displayName` nvarchar(100)
);
select *
from `category`
insert into `category`
values ('K1', 'khong co', '????');