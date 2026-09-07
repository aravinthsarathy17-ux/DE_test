{% macro maskedacc(COL) %}

concat('*****', RIGHT({{COL}},4))

{% endmacro %}