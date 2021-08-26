# объединение таблиц по общим id (внутреннее присоединение):
select *
from orders o
         inner join customers c on o.customer_id = c.id;

# внутреннее присоединение 2ух таблиц для клиентов с именем Алексей (полная информация):
select *
from orders o
         inner join customers c on o.customer_id = c.id
having lower(c.name) = lower('Alexey');

# выводится список продуктов и их количество для всех клиентов с именем Алексей:
select product_name, count(*) amount
from orders o
         inner join customers c on o.customer_id = c.id
where lower(name) = lower('Alexey')
group by o.product_name;

# выводится список продуктов всех клиентов с именем Алексей (только названия):
select product_name
from orders o
         inner join customers c on o.customer_id = c.id
where lower(name) = lower('Alexey')
group by o.product_name;