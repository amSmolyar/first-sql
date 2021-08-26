create schema netology;

create table persons
(
    name           varchar(100) not null,
    surname        varchar(100) not null,
    age            int check ( age > 0 AND age < 130),
    phone_number   varchar(20),
    city_of_living varchar(255),
    primary key (name, surname, age)
);

insert into persons (name, surname, age, phone_number, city_of_living)
values ('Evgeniy', 'Smirnov', 31, '+79258745344', 'Moscow');

insert into persons values ('Pavel', 'Ivanov', 37, '+79213456789', 'Murmansk');
insert into persons values ('Stepan', 'Petrov', 1, '+79031234567', 'Novgorod');
insert into persons values ('Olga', 'Alekseeva', 55, '+79019876543', 'Moscow');
insert into persons values ('Mihail', 'Savinov', 48, '+79127654321', 'Moscow');
insert into persons values ('Anna', 'Vasilieva', 27, '+79292874593', 'Petrozavodsk');
insert into persons values ('Nina', 'Dmitrieva', 16, '+79123874183', 'Smolensk');
