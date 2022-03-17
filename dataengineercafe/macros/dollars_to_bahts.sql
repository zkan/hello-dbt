{% macro dollars_to_bahts(column_name, precision=2) %}
  ROUND({{ column_name }} * 30, {{ precision }})
{% endmacro %}