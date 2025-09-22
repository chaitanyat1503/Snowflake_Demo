With CTE as (

select  distinct
FL_DATE
, Day(FL_DATE)
,DAYNAME(FL_DATE)
,ORIGIN
, case when DAYNAME(FL_DATE) in ('Sat','Sun')
then 'Weekend'
else 'Businessday'
end as Day_Type,

{{function_date('FL_DATE')}}

from 
{{ source('DATA_CHALLENGE', 'flights') }}
limit 10
)

select * from CTE