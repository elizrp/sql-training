--retrieve only name and phone of all customers
select name, phone
from customers;

--retrieve only internal information about the customers
select gdpr_consent_status,
            customer_profile_status,
            profile_created_date,
            profile_deactivated_date,
            deactivation_reason,
            notes
from customers;