--(prerequisite) create products_inventory table
create table orders_management.products_inventory(
	product_id serial primary key,
	product_name varchar(255) not null,
	available_quantity numeric not null,
	product_type varchar(255) not null,
	price_without_VAT decimal not null,
	price_with_VAT decimal not null generated always as (price_without_VAT * 1.2) stored,
	is_product_in_stock bool not null,
	warehouse varchar(255) not null
);

--insert records in table
insert into products_inventory
values
(default, 'HDD drive KINGSTON', 5, 'IT accessories', 100.99, default, true, 'Sofia'),
(default, 'Mouse CANYON', 45, 'IT accessories', 23.79, default, true, 'Varna'),
(default, 'Keyboard CANYON', 26, 'IT accessories', 315.00, default, false, 'Sofia'),
(default, 'Electric lawn mower EINHELL', 0, 'Home & Garden', 79.99, default, false, 'Varna'),
(default, 'Petrol chain saw MCCULLOCH', 3, 'Home & Garden', 329.00, default, true, 'Bucharest'),
(default, 'Freezer LIEBHERR', 2, 'Home Appliances', 945.89, default, true, 'Bucharest'),
(default, 'Dishwasher CANDY', 4, 'Home Appliances', 579.99, default, false, 'Bucharest'),
(default, 'Washing machine BEKO', 1, 'Home Appliances', 499.99, default, true, 'Plovdiv'),
(default, 'Built-in Hob CANDY', 19, 'Home Appliances', 299.99, default, false, 'Varna'),
(default, 'Tank Water Heater ELDOM', 0, 'Home Appliances', 308.25, default, false, 'Sofia'),
(default, 'Orbital sander CASALS', 10, 'Tools and machines', 39.99, default, false, 'Plovdiv'),
(default, 'POLISHING MACHINE EINHELL', 5, 'Tools and machines', 64.99, default, true, 'Sofia'),
(default, 'ANGLE SLIDE VERTO', 112, 'Tools and machines', 64.99, default, true, 'Plovdiv'),
(default, 'BLU-RAY PLAYER PANASONIC', 3, 'TV, Video & Gaming', 209.99, default, true, 'Plovdiv');