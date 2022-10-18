--1. get a list of countries ordered alphabetically (every country should be listed once)
select distinct country
from customers_addresses
order by country asc;

--2. get a list of cities that start with a specific letter (for example cities that start with the letter S will return Sofia, Sozopol, etc)
select distinct city
from customers_addresses
where city ~ '^B';

--3. get 3 different random cities located in Bulgaria
select * from
	(select distinct city
	from customers_addresses
	where country = 'Bulgaria') z
order by random()
limit 3;

--4. get a list of all addresses in Bulgaria outside of Sofia, Plovdiv, Varna
select address, city
from customers_addresses
where city not in ('Sofia', 'Plovdiv', 'Varna');

--5. get the last 10 added customer addresses with a province and address filled, but without a state value
select address, province, state
from customers_addresses
where province is not null
		and address is not null
		and state is null
order by address_id desc
limit 10;

--6. using wildcards, get addresses with 4-digit postal codes only, that start with 3 and end with 7. Order the result alphabetically by country and city
select address, country, city, postal_code
from customers_addresses
where postal_code::TEXT like '3__7'
order by country, city asc;

--7. create a view from customers_addresses: Create a view bulgarian_customers_addresses which contains only addresses in Bulgaria;
create view bulgarian_customers_addresses as
select address, city, province from customers_addresses
where country = 'Bulgaria';

--retrieve data from the view
select * from bulgarian_customers_addresses;