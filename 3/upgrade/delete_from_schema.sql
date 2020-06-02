SET TIMING ON
SPOOL CLEAN_TABLE.LOG

PROMPT Deleting data from tables

delete from COMPATIBILITY_TABLE;
delete from DEPARTMENT;
delete from EMPLOYEE;
delete from EMPLOYEE_ROLE;
delete from EMPLOYEE_TASK;
delete from PROJECT;
delete from ROLE;
delete from SKILL_EMPLOYEE;
delete from SKILLS;
delete from STAGE;
delete from STATUS;
delete from TASK;
delete from TEAM;

SPOOL OFF