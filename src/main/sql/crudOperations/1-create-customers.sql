--(precondition) add new column as primary key
alter table customers
add customer_id serial primary key;

--insert records with all fields
insert into customers
values
('Ivan Ivanov', 'ivan@email.com', '0888123456', 45, B'1', B'1', now(), now(), 'reason1', 'some notes'),
('Petar Petrov', 'pesho@email.com', '0888123457', 26, B'0', B'0', now(), now(), 'reason2', 'some notes'),
('Mariya Stoyanova', 'mariya@email.com', '0888123458', 29, B'1', B'0', now(), now(), 'reason1', 'some other notes');

--insert records with only mandatory fields
insert into customers (name, email, phone, gdpr_consent_status, customer_profile_status, profile_created_date)
values
('Hristo Hristov', 'hristo@email.com', '0888123459', B'0', B'1', now()),
('Simona Simeonova', 'simona@email.com', '0888123460', B'0', B'0', now());