--change data type bit to bool for columns gdpr_consent_status and customer_profile_status
--remove not null constraint to be able to set null values which are common for both bit and bool types
alter table customers alter column gdpr_consent_status drop not null;
alter table customers alter column customer_profile_status drop not null;

--set column values to null
update customers
set gdpr_consent_status = null, customer_profile_status = null;

--as there is no direct cast from bit type to bool, first cast to text (string) which can be cast to any other type
alter table customers alter gdpr_consent_status type bool using (gdpr_consent_status::text::bool);
alter table customers alter customer_profile_status type bool using (customer_profile_status::text::bool);

--set not null constraint
alter table customers alter column gdpr_consent_status set not null;
alter table customers alter column customer_profile_status set not null;