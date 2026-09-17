{{ config(
    materialized='view'
)}}
select * from  {{ source('Raw_banking', 'CARDS') }}