{{ config(
    materialized='view'
) }}


{{ dbt_utils.deduplicate(
    relation=ref('DimCustomer'),
    partition_by='CustomerAlternateKey'  
) }}