DEFINE DATA_TBS_NAME = &&1
DEFINE CURS = '_DATA'

CREATE TABLE EMPLOYEE 
(
ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL
, DEPARTMENT_ID NUMBER 
, NAME VARCHAR2(100) 
, SURNAME VARCHAR2(100) 
, EMAIL VARCHAR2(100) 
, PHONE VARCHAR2(100) 
, ADRESS VARCHAR2(100) 
) TABLESPACE &&DATA_TBS_NAME&&CURS;

COMMENT ON COLUMN EMPLOYEE.ID IS 'PK for the table';

COMMENT ON COLUMN EMPLOYEE.DEPARTMENT_ID IS 'Number of Departament';

COMMENT ON COLUMN EMPLOYEE.NAME IS 'Employee first name';

COMMENT ON COLUMN EMPLOYEE.SURNAME IS 'Employee second name';

COMMENT ON COLUMN EMPLOYEE.EMAIL IS 'Employee email';

COMMENT ON COLUMN EMPLOYEE.PHONE IS 'Employee private phone';

COMMENT ON COLUMN EMPLOYEE.ADRESS IS 'Employee home adress';
