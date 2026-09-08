{{ config(
    materialized='table'
) }}
select 
    CUSTOID,
    MASKED_NUMBER,
    City,
    Email,
    name,
    Customer_id
 from
{{ ref('stg_customer') }}