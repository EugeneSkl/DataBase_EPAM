DEFINE DATA_TBS_NAME = &&1
DEFINE CURS = '_DATA'

CREATE TABLE ROLE (
    ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL
, ROLE_NAME VARCHAR2(100)
) TABLESPACE &&DATA_TBS_NAME&&CURS;

COMMENT ON COLUMN ROLE.ID IS 'Unique value of the primary key for the table';

COMMENT ON COLUMN ROLE.ROLE_NAME IS 'Role description';