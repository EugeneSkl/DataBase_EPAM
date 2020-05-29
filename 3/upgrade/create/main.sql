SET TIMING ON
SPOOL UPGRADE_FILE.LOG
DEFINE USER_NAME = &&1

CONNECT &&USER_NAME/oracle;

PROMPT Calling create_tables started
@create_status_table.sql 
@create_task_table.sql
@create_stage_table.sql
@create_team_table.sql
@create_department_table.sql
@create_skill_table.sql
@create_role_table.sql
@create_project_table.sql
@create_employee_table.sql
@create_skill_employee_table.sql
@create_employee_role_table.sql
@create_employee_task_table.sql
@create_employee_project_table.sql
@create_index.sql &&1


-- UNDEFINE USER_NAME
SPOOL OFF