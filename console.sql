USE store;

insert into customers (id, firstname, lastname) values (1, 'Mario', 'Mario');
insert into customers (id, firstname, lastname) values (2, 'Samus', 'Aran');
insert into customers (id, firstname, lastname) values (3, 'Captain', 'Falcon');

insert into products (id, product, cost, manufacturer) VALUES (1, 'Armor', 15, 'Metroid');
insert into products (id, product, cost, manufacturer) VALUES (2, 'Gloves', 5, 'Mushroom Kingdom');
insert into products (id, product, cost, manufacturer) VALUES (3, 'ship', 15, 'Metroid');
insert into products (id, product, cost, manufacturer) VALUES (4, 'Overalls', 15, 'Mushroom Kingdom');
insert into products (id, product, cost, manufacturer) VALUES (5, 'Maxim Tomato', 10, 'Super Smash Bros.');
insert into products (id, product, cost, manufacturer) VALUES (6, 'Blue Falcon', 15, 'F-Zero');

insert into orders (id, product, cost, customerId) VALUES (1, 'Armor', 15, 2);
insert into orders (id, product, cost, customerId) VALUES (2, 'Gloves', 5, 1);
insert into orders (id, product, cost, customerId) VALUES (3, 'ship', 20, 2);
insert into orders (id, product, cost, customerId) VALUES (4, 'overalls', 10, 1);
insert into orders (id, product, cost, customerId) VALUES (5, 'Maxim Tomato', 10, 1);
insert into orders (id, product, cost, customerId) VALUES (6, 'Maxim Tomato', 10, 2);
insert into orders (id, product, cost, customerId) VALUES (7, 'Blue Falcon', 15, 3);

insert into product_customer_association (id, product_id, customer_id) VALUES (1, 1, 2);
insert into product_customer_association (id, product_id, customer_id) VALUES (2, 2, 1);
insert into product_customer_association (id, product_id, customer_id) VALUES (3, 3, 2);
insert into product_customer_association (id, product_id, customer_id) VALUES (4, 4, 1);
insert into product_customer_association (id, product_id, customer_id) VALUES (5, 5, 1);
insert into product_customer_association (id, product_id, customer_id) VALUES (6, 5, 2);
insert into product_customer_association (id, product_id, customer_id) VALUES (7, 6, 3);

select * from customers;
select * from orders;
select * from product_customer_association;
select * from products;

select product from orders;
select cost, manufacturer from products;
select product_id, customer_id from product_customer_association;
select lastname from customers;