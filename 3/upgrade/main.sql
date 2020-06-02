SET TIMING ON
SPOOL UPGRADE_FILE.LOG
DEFINE USER_NAME = &&1

CONNECT &&USER_NAME/oracle;

PROMPT Calling create_tables started
@create/create_status_table.sql &&USER_NAME 
@create/create_task_table.sql &&USER_NAME
@create/create_stage_table.sql &&USER_NAME
@create/create_team_table.sql &&USER_NAME
@create/create_department_table.sql &&USER_NAME
@create/create_skill_table.sql &&USER_NAME
@create/create_role_table.sql &&USER_NAME
@create/create_project_table.sql &&USER_NAME
@create/create_employee_table.sql &&USER_NAME
@create/create_skill_employee_table.sql &&USER_NAME
@create/create_employee_role_table.sql &&USER_NAME
@create/create_employee_task_table.sql &&USER_NAME
@create/create_employee_project_table.sql &&USER_NAME
@create/create_compatibility_table.sql &&USER_NAME
@create/create_index.sql &&USER_NAME
@create_exel_table.sql 

SPOOL OFF