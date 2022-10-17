--Queries:
--1. Get the count of all available products in stock
select count(product_id) count_products_in_stock
from products_inventory
where is_product_in_stock = true;

--2. Get the average product price with VAT for all categories
select round(avg(price_with_VAT), 2) avg_price_with_vat
from products_inventory;

--3. Get the total cost of all available items in stock (use price with VAT and available qty.)
select sum(price_with_vat)
from products_inventory
where available_quantity > 0;

--4. Find the most and least expensive item from the table
    --most expensive
    select max(price_with_vat)
    from products_inventory;

        --OR with product name:
        select product_name, price_with_vat
        from products_inventory
        where price_with_vat = (
                select max(price_with_vat)
                from products_inventory pi2);

    --least expensive
    select min(price_with_vat)
    from products_inventory;

        --OR with product name:
        select product_name, price_with_vat
        from products_inventory
        where price_with_vat = (
                select min(price_with_vat)
                from products_inventory);

--5. Find the most expensive item in each warehouse
select warehouse, max(price_with_vat) highest_price
from products_inventory
group by warehouse
order by warehouse;

--6. Get the count of all products for each category
select product_type, count(product_id) product_count
from products_inventory
group by product_type
order by product_type;

--7. Get the count of all products for each category in and out of stock
    --in stock:
    select product_type, count(product_id) products_in_stock
    from products_inventory
    where is_product_in_stock = true
    group by product_type;

    --out of stock:
    select product_type, count(product_id) products_out_of_stock
    from products_inventory
    where is_product_in_stock = false
    group by product_type;

--8. Get the count of all products for each category where the products count is more than 3
select product_type, count(product_id) product_count
from products_inventory
group by product_type
having count(product_id) > 3;

--9. Get the inventory amount for each warehouse
select warehouse, sum(available_quantity)
from products_inventory
group by warehouse;

--10. Get all product categories stored by each warehouse
select warehouse, product_type
from products_inventory
group by warehouse, product_type
order by warehouse;

--11. Get the average (number of) product categories held by the warehouses
select avg(count_categories) as average_categories from
(select warehouse, count(distinct product_type) as count_categories
from products_inventory
group by warehouse) z;