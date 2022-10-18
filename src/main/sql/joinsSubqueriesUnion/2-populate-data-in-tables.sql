--populate tables
--customers
insert into customers
values
(default, 'Ivan Ivanov', 'ivan@email.com', '0888123456', 45, true, true, now(), now(), 'reason1', 'some notes'),
(default, 'Petar Petrov', 'pesho@email.com', '0888123457', 26, false, false, now(), now(), 'reason2', 'some notes'),
(default, 'Mariya Stoyanova', 'mariya@email.com', '0888123458', 29, true, false, now(), now(), 'reason1', 'some other notes'),
(default, 'Petyo Krastev', 'petyo@email.com', '0887156234', 18, false, true, now(), now(), 'reason5', 'notes notes'),
(default, 'Ivan Hristov', 'ivanhr@email.com', '0888100000', 24, true, false, now(), now(), 'reason2', 'some notes'),
(default, 'Anna Kiryakova', 'annak@email.com', '0877026984', 59, true, true, now(), now(), 'reason1', 'some other notes'),
(default, 'Paven Ventsislavov', 'pavel@email.com', '0883456712', 62, true, true, now(), now(), 'reason5', 'some notes'),
(default, 'Andrey Lukov', 'andrey@email.com', '0885946312', 31, false, false, now(), now(), 'reason2', 'some notes'),
(default, 'Ivana Markova', 'ivana@email.com', '0876626984', 40, true, true, now(), now(), 'reason1', 'some other notes');

insert into customers (id, name, email, phone, gdpr_consent_status, customer_profile_status, profile_created_date)
values
(default, 'Hristo Hristov', 'hristo@email.com', '0888123459', false, true, now()),
(default, 'Simona Simeonova', 'simona@email.com', '0888123460', false, false, now());

--customers_addresses
insert into customers_addresses
values
(default, 5, 'address1', 'Sofia', 'Sofia-grad', null, 3017, 'Bulgaria'),
(default, 2, 'address2', 'Plovdiv', 'Plovdiv', null, 1404, 'Bulgaria'),
(default, 1, 'address3', 'Varna', 'Varna', null, 3699, 'Bulgaria'),
(default, 11, 'address4', 'Blagoevgrad', 'Blagoevgrad', null, 6445, 'Bulgaria'),
(default, 10, 'address5', 'Smolyan', 'Smolyan', null, 1000, 'Bulgaria'),
(default, 4, 'address6', 'Barcelona', 'Barcelona', null, 887, 'Spain'),
(default, 7, 'address7', 'Sofia', 'Sofia-grad', null, 3287, 'Bulgaria'),
(default, 3, 'address8', 'London', 'London', null, 123497, 'UK'),
(default, 6, 'address9', 'New York', 'New York', 'New York', 00179, 'US'),
(default, 9, 'address10', 'Manchester', 'Manchester', 'Manchester', 197465, 'UK'),
(default, 8, 'address11', 'Warshaw', null, null, 4466, 'Poland');

--suppliers
insert into suppliers
values
(default, 'Supplier1', 'supplier1@email.com', '0888123456', 45, true, true, now(), now(), 'reason1', 'some notes'),
(default, 'Supplier2', 'supplier2@email.com', '0888123457', 26, false, false, now(), now(), 'reason2', 'some notes'),
(default, 'Supplier3', 'supplier3@email.com', '0888123458', 29, true, false, now(), now(), 'reason1', 'some other notes'),
(default, 'Supplier4', 'supplier4@email.com', '0887156234', 18, false, true, now(), now(), 'reason5', 'notes notes'),
(default, 'Supplier5', 'supplier5@email.com', '0888100000', 24, true, false, now(), now(), 'reason2', 'some notes'),
(default, 'Supplier6', 'supplier6@email.com', '0877026984', 59, true, true, now(), now(), 'reason1', 'some other notes'),
(default, 'Supplier7', 'supplier7@email.com', '0883456712', 62, true, true, now(), now(), 'reason5', 'some notes'),
(default, 'Supplier8', 'supplier8@email.com', '0885946312', 31, false, false, now(), now(), 'reason2', 'some notes'),
(default, 'Supplier9', 'supplier9@email.com', '0876626984', 40, true, true, now(), now(), 'reason1', 'some other notes'),
(default, 'Supplier10', 'supplier10@email.com', '0882123456', 45, true, true, now(), now(), 'reason1', 'some notes'),
(default, 'Supplier11', 'supplier11@email.com', '0882123457', 26, false, false, now(), now(), 'reason2', 'some notes'),
(default, 'Supplier12', 'supplier12@email.com', '0882123458', 29, true, false, now(), now(), 'reason1', 'some other notes'),
(default, 'Supplier13', 'supplier13@email.com', '0882156234', 18, false, true, now(), now(), 'reason5', 'notes notes'),
(default, 'Supplier14', 'supplier14@email.com', '0882100000', 24, true, false, now(), now(), 'reason2', 'some notes');

--suppliers_addresses
insert into suppliers_addresses
values
(default, 12, 'address1', 'Sofia', 'Sofia-grad', null, 3017, 'Bulgaria'),
(default, 24, 'address2', 'Plovdiv', 'Plovdiv', null, 1404, 'Bulgaria'),
(default, 21, 'address3', 'Varna', 'Varna', null, 3699, 'Bulgaria'),
(default, 18, 'address4', 'Blagoevgrad', 'Blagoevgrad', null, 6445, 'Bulgaria'),
(default, 20, 'address5', 'Smolyan', 'Smolyan', null, 1000, 'Bulgaria'),
(default, 13, 'address6', 'Barcelona', 'Barcelona', null, 887, 'Spain'),
(default, 22, 'address7', 'Sofia', 'Sofia-grad', null, 3287, 'Bulgaria'),
(default, 17, 'address8', 'London', 'London', null, 123497, 'UK'),
(default, 16, 'address9', 'New York', 'New York', 'New York', 00179, 'US'),
(default, 19, 'address10', 'Manchester', 'Manchester', 'Manchester', 197465, 'UK'),
(default, 15, 'address11', 'Warshaw', null, null, 4466, 'Poland');

--orders
insert into orders
values
(default, 5, 'Simona Simeonova', false, true, now(), null),
(default, 6, 'Petyo Krastev', false, true, now(), null),
(default, 6, 'Petyo Krastev', false, true, now(), null),
(default, 6, 'Petyo Krastev', false, true, now(), null),
(default, 1, 'Ivan Ivanov', false, true, now(), null),
(default, 8, 'Anna Kiryakova', false, true, now(), null),
(default, 11, 'Ivana Markova', false, true, now(), null),
(default, 5, 'Simona Simeonova', false, true, now(), null),
(default, 11, 'Ivana Markova', false, true, now(), null),
(default, 1, 'Ivan Ivanov', false, true, now(), null),
(default, 9, 'Pavel Ventsislavov', false, true, now(), null),
(default, 8, 'Anna Kiryakova', false, true, now(), null);

--products_inventory
insert into products_inventory
values
(default, 17, 'HDD drive KINGSTON', 5, 'IT accessories', 100.99, default, true, 'Sofia'),
(default, 12, 'Mouse CANYON', 45, 'IT accessories', 23.79, default, true, 'Varna'),
(default, 12, 'Keyboard CANYON', 26, 'IT accessories', 315.00, default, false, 'Sofia'),
(default, 19, 'Electric lawn mower EINHELL', 0, 'Home & Garden', 79.99, default, false, 'Varna'),
(default, 24, 'Petrol chain saw MCCULLOCH', 3, 'Home & Garden', 329.00, default, true, 'Bucharest'),
(default, 15, 'Freezer LIEBHERR', 2, 'Home Appliances', 945.89, default, true, 'Bucharest'),
(default, 19, 'Dishwasher CANDY', 4, 'Home Appliances', 579.99, default, false, 'Bucharest'),
(default, 20, 'Washing machine BEKO', 1, 'Home Appliances', 499.99, default, true, 'Plovdiv'),
(default, 23, 'Built-in Hob CANDY', 19, 'Home Appliances', 299.99, default, false, 'Varna'),
(default, 24, 'Tank Water Heater ELDOM', 0, 'Home Appliances', 308.25, default, false, 'Sofia'),
(default, 20, 'Orbital sander CASALS', 10, 'Tools and machines', 39.99, default, false, 'Plovdiv'),
(default, 17, 'POLISHING MACHINE EINHELL', 5, 'Tools and machines', 64.99, default, true, 'Sofia'),
(default, 12, 'ANGLE SLIDE VERTO', 112, 'Tools and machines', 64.99, default, true, 'Plovdiv'),
(default, 15, 'BLU-RAY PLAYER PANASONIC', 3, 'TV, Video & Gaming', 209.99, default, true, 'Plovdiv');

--orders_products
insert into orders_products
values
(1, 12, 13),
(11, 14, 20),
(2, 12, 1),
(2, 1, 2),
(5, 11, 5),
(1, 1, 1),
(11, 9, 46),
(9, 6, 13),
(12, 6, 3),
(10, 5, 3),
(10, 2, 2),
(4, 12, 16),
(6, 2, 120),
(9, 10, 40),
(9, 3, 190),
(5, 3, 50),
(5, 2, 2),
(10, 7, 66),
(1, 7, 99),
(7, 5, 100),
(7, 7, 8),
(10, 10, 7),
(4, 2, 89),
(4, 10, 46);