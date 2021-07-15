

  create or replace view `project-racar`.`vehicle`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `project-racar`.`vehicle`.`my_first_dbt_model`
where id = 1;

