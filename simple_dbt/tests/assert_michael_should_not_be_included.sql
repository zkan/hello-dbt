-- tests/assert_michael_should_not_be_included.sql

select
    *

from dbt_tutorial.final

where first_name = 'Michael'
