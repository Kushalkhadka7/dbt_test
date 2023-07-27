{{ config(materialized='table') }}

with source_epidemiology as (
  select * from {{ source('dbt_git', 'commits') }}
),
final as (
  select * from source_epidemiology
)
SELECT * FROM final
