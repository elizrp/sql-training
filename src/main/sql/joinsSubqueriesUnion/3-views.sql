--Create views and save them as scripts:
--1. customers_contact_info: all customers contact information - phone, address and etc.
create view customers_contact_info as
	select c.name, c.phone, ca.address, ca.city, ca.country
	from customers c
	inner join customers_addresses ca on c.id = ca.customer_id;

--2. customers_active_orders: customer id, name, and phone with order id, status, and date of order
create view customers_active_orders as
	select c.id as customer_id, c.name as customer_name, c.phone as customer_phone, o.id as order_id, o.is_order_completed as status, o.date_of_order
	from customers c
	join orders o on c.id = o.customer_id ;

--3. customers_pending_payments: customer id and name with a list of pending orders that are not paid, order date, and total sum expected to be paid.
create view customers_pending_payments as
	select c.id as customer_id, c.name as customer_name, o.id as order_id, o.date_of_order, round(sum(op.ordered_quantity * pi2.price_with_vat),2) as total_amount
	from customers c
		join orders o on c.id  = o.customer_id
		join orders_products op on o.id  = op.order_id
		join products_inventory pi2 on op.product_id = pi2.id
	where o.is_order_paid = false
	group by c.id, o.id
	order by c.name;

--4. supplier_inventory: supplier id, name and phone with available products (qty > 0), quantity, price with and without VAT, and the warehouse the item is located
create view supplier_inventory as
	select s.id as supplier_id, s.name as supplier_name, s.phone as supplier_phone,
		pi2.product_name, pi2.available_quantity, pi2.price_without_vat, pi2.price_with_vat, pi2.warehouse
	from suppliers s
		join products_inventory pi2 on s.id = pi2.supplier_id
	where pi2.available_quantity > 0;

--5. customer_ordered_items: customer id and name with ordered product and product type
create view customer_ordered_items as
	select c.id as customer_id, c.name as customer_name, pi2.product_name, pi2.product_type
	from customers c
		join orders o on o.customer_id = c.id
		join orders_products op on op.order_id = o.id
		join products_inventory pi2 on pi2.id = op.product_id
	group by c.id, pi2.product_name, pi2.product_type;

--6. phones: a union of all suppliers' and customers' IDs, names, and phone numbers
create view phones as
	select id, name, phone
	from customers
	union
	select id, name, phone
	from suppliers;