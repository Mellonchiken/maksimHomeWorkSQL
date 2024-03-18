create database sheeps;

use sheeps;

create table customers
(
customersId int auto_increment not null,
firstName varchar(100) not null,
secondName varchar(100) not null,
primary key(customersId)
);

create table sheepsOrders
(
sheepsOrdersId int auto_increment not null,
customersId int not null,
dateOfOrder dateTime not null,
primary key(sheepsOrdersId),
foreign key(customersId) references customers(customersId)
);

insert into customers
(firstName, secondName)
values
('Oleh', 'Kornevoj'),
('Stepan', 'Hilka');

insert into sheepsOrders
(customersId, dateOfOrder)
values
(1, now()),
(2, now()),
(2, now()),
(1, now());