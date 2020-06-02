DEFINE DATA_TBS_NAME = &&1
DEFINE CURS = '_DATA'

CREATE TABLE EMPLOYEE_TASK (
ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL
, EMPLOYEE_ID NUMBER 
, TASK_ID NUMBER 
) TABLESPACE &&DATA_TBS_NAME&&CURS;

COMMENT ON COLUMN EMPLOYEE_TASK.ID IS 'Unique value of the primary key for the table';

COMMENT ON COLUMN EMPLOYEE_TASK.EMPLOYEE_ID IS 'Number of person';

COMMENT ON COLUMN EMPLOYEE_TASK.TASK_ID IS 'Number of task';
