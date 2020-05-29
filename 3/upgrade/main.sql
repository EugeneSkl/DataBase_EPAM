SET TIMING ON
SPOOL UPGRADE_FILE.LOG
DEFINE USER_NAME = &&1

CONNECT &&USER_NAME/oracle;

PROMPT Calling create_tables started
@create/create_status_table.sql 
@create/create_task_table.sql
@create/create_stage_table.sql
@create/create_team_table.sql
@create/create_department_table.sql
@create/create_skill_table.sql
@create/create_role_table.sql
@create/create_project_table.sql
@create/create_employee_table.sql
@create/create_skill_employee_table.sql
@create/create_employee_role_table.sql
@create/create_employee_task_table.sql
@create/create_employee_project_table.sql
@create/create_index.sql &&1


-- UNDEFINE USER_NAME
SPOOL OFF