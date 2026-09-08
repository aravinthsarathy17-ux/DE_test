{{ config(
    materialized='table'
) }}
select 
TRANSACTION_ID,
ACCOUNT_ID,
TXN_DATE,
TXN_TYPE,
AMOUNT,
CHANNEL,
MERCHANT_CATEGORY
from {{ source('Raw_banking', 'TRANSACTIONS') }}
