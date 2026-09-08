select *
from {{ ref('stg_customer')}}
where email is not null 
and email not like '%@%.%'