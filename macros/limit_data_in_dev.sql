{% macro limit_data_in_dev(column_name) %}
{% if target.name == 'dev' %}
where {{ column_name }} >= '2018-04-01'
{% endif %}
{% endmacro %}