With CTE as (

select * from 
{{ source('DATA_CHALLENGE', 'airport_codes') }}
WHERE UPPER(TYPE) <> 'CLOSED'
AND ISO_COUNTRY = 'US'
AND TYPE IN ('large_airport', 'medium_airport')
AND IATA_CODE IS NOT NULL
order by iata_code, type, name
)

select * from CTE