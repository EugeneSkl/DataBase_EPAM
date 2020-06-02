DEFINE DATA_TBS_NAME = &&1
DEFINE CURS = '_DATA'

CREATE TABLE EMPLOYEE_PROJECT (
ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL
, EMPLOYEE_ID NUMBER 
, PROJECT_ID NUMBER 
) TABLESPACE &&DATA_TBS_NAME&&CURS;
COMMENT ON COLUMN EMPLOYEE_PROJECT.ID IS 'Unique value of the primary key for the table';

COMMENT ON COLUMN EMPLOYEE_PROJECT.EMPLOYEE_ID IS 'Number of Person';

COMMENT ON COLUMN EMPLOYEE_PROJECT.PROJECT_ID IS 'Number of Project';