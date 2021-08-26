create schema netology;

create table customers
(
    id           int primary key auto_increment,
    name         varchar(100) not null,
    surname      varchar(100) not null,
    age          int check ( age > 0 AND age < 130 ),
    phone_number varchar(20)
);

insert into customers (name, surname, age, phone_number)
values ('Evgeniy', 'Smirnov', 31, '+79258745344');

insert into customers (name, surname, age, phone_number)
values ('Pavel', 'Ivanov', 37, '+79213456789');

insert into customers (name, surname, age, phone_number)
values ('Stepan', 'Petrov', 1, '+79031234567');

insert into customers (name, surname, age, phone_number)
values ('Olga', 'Alekseeva', 55, '+79019876543');

insert into customers (name, surname, age, phone_number)
values ('Mihail', 'Savinov', 48, '+79127654321');

insert into customers (name, surname, age, phone_number)
values ('Alexey', 'Bokov', 16, '+79127657654');

insert into customers (name, surname, age, phone_number)
values ('Alexey', 'Valeev', 42, '+79157837654');

update customers
set age = 27
where name = 'Stepan'
  AND surname = 'Petrov'
  AND phone_number = '+79031234567';