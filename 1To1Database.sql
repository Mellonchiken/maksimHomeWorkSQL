create database shipsFactory;

use shipsFactory;
-- you must realize the principle "one to one" try to use "unique"
create table buyers
(
buyersId int auto_increment not null, -- change name
name varchar(100) not null,
surname varchar(100) not null,
mobileNumber varchar(12) default 'unknown',
primary key(buyersId)
);

create table orders
(
ordersId int not null,
buyersId int auto_increment not null,
shipsType varchar(100) not null,
shipsColour varchar(100) default 'doesn`t metter', -- enum
shipsSpeed int not null,
primary key(ordersId),
foreign key(buyersId) references buyers(buyersId)
);

insert into buyers 
(name, surname, mobileNumber) 
values
('Maks', 'Melnychenko', 380966533411),
('Vlad', 'Pemov', 380543869126),
('Matvey', 'Kozachek', 380675433287);

insert into orders
(ordersId, shipsType, shipsColour, shipsSpeed)
values
(234507, 'cyberM3', 'green', 98),
(560072, 'superSpeedTruk8', 'red', 170),
(042351, 'mechanicLake2', 'blue', 112);

-- add selects for all tables

