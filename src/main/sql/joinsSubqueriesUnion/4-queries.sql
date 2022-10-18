--Create queries returning:
--1. list of customers whose phone number is listed as a phone number of another customer
select c1.name, c1.phone from customers c1
where exists
      (select * from customers c2
       where c1.phone = c2.phone and c1.id <> c2.id);

--2. using left and right joins, find customers without orders and orders without active customers
    --customers without orders
    select c2.name as customers_without_orders
    from customers c2
    left join orders o on c2.id = o.customer_id
    where o.id is null;

    --orders without active customers
    select o.id as order_id
    from orders o
    left join customers c on c.id = o.customer_id
    where c.customer_profile_status = false
    order by o.id;

--3. using full join, find customers without orders and orders without active customers
    --customers without orders
    select c2.name as customers_without_orders
    from customers c2
    full join orders o on c2.id = o.customer_id
    where o.id is null;

    --orders without active customers
    select o.id as order_id
    from orders o
    full join customers c on c.id = o.customer_id
    where c.customer_profile_status = false and o.id is not null
    order by o.id;