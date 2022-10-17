--(precondition) add new column as primary key
alter table customers
add customer_id serial primary key;

--insert records with all fields
insert into customers
values
('Ivan Ivanov', 'ivan@email.com', '0888123456', 45, true, true, now(), now(), 'reason1', 'some notes'),
('Petar Petrov', 'pesho@email.com', '0888123457', 26, false, false, now(), now(), 'reason2', 'some notes'),
('Mariya Stoyanova', 'mariya@email.com', '0888123458', 29, true, false, now(), now(), 'reason1', 'some other notes');

--insert records with only mandatory fields
insert into customers (name, email, phone, gdpr_consent_status, customer_profile_status, profile_created_date)
values
('Hristo Hristov', 'hristo@email.com', '0888123459', false, true, now()),
('Simona Simeonova', 'simona@email.com', '0888123460', false, false, now());