select
*
from {{ source('DATA_CHALLENGE', 'flights') }}
limit 10