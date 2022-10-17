--create table customers
create table orders_management.customers(
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

--create indexes
create index on customers ((lower(name)));
create index on customers (email);
create index on customers (phone);

--delete data from table
truncate table customers;

--remove table
drop table customers;