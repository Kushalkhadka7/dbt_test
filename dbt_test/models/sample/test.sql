with file_changes as (
  select 
    * 
  from {{ source('dbt_git', 'file_changes') }} as abc
  inner join s3(<bucket_url>)
  inner join 
),
final as (
  select * from file_changes
)
SELECT * FROM final
