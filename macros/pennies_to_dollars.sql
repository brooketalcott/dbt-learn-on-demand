{%- macro pennies_to_dollars(col_name='amount') -%}
    {{col_name}}/100
{%- endmacro -%}