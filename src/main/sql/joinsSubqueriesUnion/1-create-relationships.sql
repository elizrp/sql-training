--Create relationships between all existing tables:
--1. 1:1 relationship between customers and customers_addresses tables
drop table if exists customers_addresses;
drop table if exists customers;

create table orders_management.customers(
	id serial primary key,
	name varchar(255) not null,
	email varchar(255) not null unique,
	phone varchar(255) not null unique,
	age int default(99),
	gdpr_consent_status bool not null,
	customer_profile_status bool not null,
	profile_created_date timestamp not null default localtimestamp(0),
	profile_deactivated_date timestamp,
	deactivation_reason varchar(255),
	notes text
);

create table orders_management.customers_addresses(
	id serial primary key,
	customer_id int not null,
	address varchar(255),
	city varchar(255) not null,
	province varchar(255),
	state varchar(255),
	postal_code int not null check (postal_code > 0),
	country varchar(255) not null,
	constraint fk_customer_id foreign key (customer_id) references customers (id) on delete cascade on update cascade
);

--2. 1:1 relationship between suppliers and suppliers_addresses tables
drop table if exists suppliers_addresses;
drop table if exists suppliers;

create table orders_management.suppliers(
	id serial primary key,
	name varchar(255) not null,
	email varchar(255) not null unique,
	phone varchar(255) not null unique,
	age int default(99),
	gdpr_consent_status bool not null,
	supplier_profile_status bool not null,
	profile_created_date timestamp not null default localtimestamp(0),
	profile_deactivated_date timestamp,
	deactivation_reason varchar(255),
	notes text
);

create table orders_management.suppliers_addresses(
	id serial primary key,
	supplier_id int not null,
	address varchar(255),
	city varchar(255) not null,
	province varchar(255),
	state varchar(255),
	postal_code int not null check (postal_code > 0),
	country varchar(255) not null,
	constraint fk_supplier_id foreign key (supplier_id) references suppliers (id) on delete cascade on update cascade
);

--3. 1:many relationships between customers and orders
drop table if exists orders;

create table orders_management.orders(
	id serial primary key,
	customer_id int not null,
	customer varchar(255) not null,
	is_order_completed bool not null,
	is_order_paid bool not null,
	date_of_order timestamp not null,
	date_of_order_completed timestamp,
	constraint fk_customer_order_id foreign key (customer_id) references customers (id) on delete cascade on update cascade
);

--4. 1:many relationships between suppliers and products_inventory
drop table if exists products_inventory;

create table orders_management.products_inventory(
	id serial primary key,
	supplier_id int not null,
	product_name varchar(255) not null,
	available_quantity numeric not null,
	product_type varchar(255) not null,
	price_without_VAT decimal not null,
	price_with_VAT decimal not null generated always as (price_without_VAT * 1.2) stored,
	is_product_in_stock bool not null,
	warehouse varchar(255) not null,
	constraint fk_supplier_product_id foreign key (supplier_id) references suppliers (id) on delete cascade on update cascade
);

--5. many: many relationships between orders and products_inventory table with the ordered quantity
create table orders_products (
  order_id int not null,
  product_id int not null,
  ordered_quantity int not null,
  primary key (order_id, product_id),
  constraint fk_order_id foreign key (order_id) references orders (id),
  constraint fk_product_id foreign key (product_id) references products_inventory (id)
);