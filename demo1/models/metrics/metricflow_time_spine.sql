-- models/metrics/metricflow_time_spine.sql
with days as (
  {{ dbt_utils.date_spine(
      'day',
      "date '2025-01-01'",
      "date '2026-01-01'"
    )
  }}
),

final as (
  select cast(date_day as date) as date_day
  from days
)

select *
from final
order by date_day

