{% macro function_date(x) %}

case when ({{x}}) < CURRENT_DATE then 'PAST'
else 'FUTURE' end

{% endmacro %}