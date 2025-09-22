with CTE as
(
    Select 
    *
    from 
    {{ ref('dim_airport_codes') }} a
    inner join {{ ref('dim_flights') }} b
    on a.IATA_CODE = b.ORIGIN
)

Select * from CTE