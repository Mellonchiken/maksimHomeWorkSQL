create database planes; -- an airport

use planes;

create table departingPeople -- passenger
(
departingPeopleId int auto_increment not null,
name varchar(100) not null,
surname varchar(100) not null,
primary key(departingPeopleId)
);

create table timetable
(
timetableId int auto_increment not null,
planeName varchar(20) not null, -- number of flight
departureTime date not null, -- maby will be better use 'dataTime'
primary key(timetableId)
);

create table information
(
informationId int auto_increment not null,
timetableId int not null,
departingPeopleId int not null,
primary key(informationId),
foreign key(departingPeopleId) references departingPeople(departingPeopleId),
foreign key(timetableId) references timetable(timetableId)
);

insert into departingPeople
(name, surname)
values
('Maksim', 'Melnychenko'),
('Milana', 'Melnychenko'),
('Jaromej', 'Lohasievskij');

insert into timetable
(planeName, departureTime)
values
('Boing48', '2024-03-19'),
('AirCraft02', '2024-03-23'),
('SamoilAirBus', '2024-10-02'),
('DeutchRose', '2025-02-14');

insert into information
(timetableId, departingPeopleId)
values
(1, 2),
(4, 1),
(1, 3),
(2, 3),
(2, 1),
(3, 3),
(4, 2);
