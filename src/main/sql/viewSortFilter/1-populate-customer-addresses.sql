--(prerequisite) create customers_addresses table
create table orders_management.customers_addresses(
	address_id serial primary key,
	address varchar(255),
	city varchar(255) not null,
	province varchar(255),
	state varchar(255),
	postal_code int not null check (postal_code > 0),
	country varchar(255) not null
);

--(prerequisite) insert records in the table
insert into customers_addresses
values
(default, 'address1', 'Sofia', 'Sofia-grad', null, 3017, 'Bulgaria'),
(default, 'address2', 'Plovdiv', 'Plovdiv', null, 1404, 'Bulgaria'),
(default, 'address3', 'Varna', 'Varna', null, 3699, 'Bulgaria'),
(default, 'address4', 'Blagoevgrad', 'Blagoevgrad', null, 6445, 'Bulgaria'),
(default, 'address5', 'Smolyan', 'Smolyan', null, 1000, 'Bulgaria'),
(default, 'address6', 'Sofia', 'Sofia-grad', null, 3017, 'Bulgaria'),
(default, 'address7', 'Sofia', 'Sofia-grad', null, 3287, 'Bulgaria'),
(default, 'address8', 'London', 'London', null, 123497, 'UK'),
(default, 'address9', 'New York', 'New York', 'New York', 00179, 'US'),
(default, 'address10', 'Manchester', 'Manchester', 'Manchester', 197465, 'UK'),
(default, 'address11', 'Warshaw', null, null, 4466, 'Poland'),
(default, 'address12', 'Tbilisi', 'Tbilisi', null, 1332, 'Georgia'),
(default, 'address13', 'Krakow', null, null, 3947, 'Poland'),
(default, 'address14', 'Barcelona', 'Barcelona', null, 887, 'Spain'),
(default, 'address15', 'Barcelona', 'Barcelona', null, 377, 'Spain'),
(default, null, 'Washington', 'Washington', 'District of Columbia', 22005, 'US'),
(default, null, 'London', 'London', null, 315987, 'UK');