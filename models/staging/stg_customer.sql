{{ config(
    materialized='table'
)}}

select 
     coalesce(Customer_id,'0') as Customer_id,
     split_part(name,' ',1) as First_name,
     split_part(name,' ',2) as Last_name,
     left(name,5) as data,
     upper(name) as Name,
     lower(email) as email,
     concat('*****',Right(Phone,4)) as Masked_Number,
     initcap(city) as City,
    concat( Right(name,4),Right(customer_id,5)) as CustoID
     from {{ source('Raw_banking','CUSTOMER') }}
     qualify row_number() over(
        partition by customer_id
        order by JOIN_DATE
     )=1