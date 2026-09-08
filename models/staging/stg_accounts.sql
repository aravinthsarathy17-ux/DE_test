select 
      Account_id as Acc_id,
      customer_id as Customer_id,
      branch_id as branch_id,
      account_type,
      balance,
      year(open_date) as open_year,
      Status
from {{ source('Raw_banking', 'ACCOUNTS') }}
qualify row_number() over(partition by customer_id order by account_id)=1