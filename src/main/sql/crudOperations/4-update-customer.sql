--update customer phone
update customers
set phone = '08123'
where customer_id = 1;

--deactivate account
update customers
set customer_profile_status = false, profile_deactivated_date = now(), deactivation_reason = 'new reason'
where customer_id = 5;

--activate account
update customers
set customer_profile_status = true, profile_deactivated_date = null, deactivation_reason = null
where customer_id = 5;