create table orders
(
    id           int primary key auto_increment,
    date         timestamp    not null default now(),
    customer_id  int check ( customer_id > 0 ),
    product_name varchar(255) not null,
    amount       int check ( amount > 0 ),
    foreign key (customer_id) references customers (id)
);

insert into orders (customer_id, product_name, amount)
values (1, 'bread', 2);

insert into orders (customer_id, product_name, amount)
values (6, 'bread', 1);

insert into orders (customer_id, product_name, amount)
values (3, 'milk', 2);

insert into orders (customer_id, product_name, amount)
values (7, 'milk', 1);

insert into orders (customer_id, product_name, amount)
values (2, 'eggs', 3);

insert into orders (customer_id, product_name, amount)
values (4, 'eggs', 2);

insert into orders (customer_id, product_name, amount)
values (6, 'eggs', 1);

insert into orders (customer_id, product_name, amount)
values (7, 'socks-43', 2);

insert into orders (customer_id, product_name, amount)
values (5, 'socks-42', 3);

insert into orders (customer_id, product_name, amount)
values (1, 'socks-42', 3);

insert into orders (customer_id, product_name, amount)
values (1, 'champagne', 1);

insert into orders (customer_id, product_name, amount)
values (2, 'champagne', 1);

insert into orders (customer_id, product_name, amount)
values (3, 'champagne', 1);

insert into orders (customer_id, product_name, amount)
values (4, 'champagne', 1);

insert into orders (customer_id, product_name, amount)
values (5, 'champagne', 1);

insert into orders (customer_id, product_name, amount)
values (6, 'champagne', 1);

insert into orders (customer_id, product_name, amount)
values (7, 'champagne', 1);
