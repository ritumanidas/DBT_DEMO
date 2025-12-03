select 
TIME,dayname(TIME) as Day_name,
case when dayname(TIME) in('Sat','Sun') then 'Weekend'
    else 'Weekday' end as Day_state
from {{ source('demo', 'weather') }}
