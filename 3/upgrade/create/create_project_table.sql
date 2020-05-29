CREATE TABLE PROJECT(
ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOT NULL
,  ID_PROJECT NUMBER 
, NAME VARCHAR2(100) 
, DESCRIPTION VARCHAR2(100) 
, ID_STAGE NUMBER 
, START_DAY DATE 
, END_DAY DATE 
);

COMMENT ON COLUMN PROJECT.ID IS 'Unique value of the primary key for the table';

COMMENT ON COLUMN PROJECT.ID_PROJECT IS 'Number of project';

COMMENT ON COLUMN PROJECT.NAME IS 'Name of project';

COMMENT ON COLUMN PROJECT.DESCRIPTION IS 'Description of project';

COMMENT ON COLUMN PROJECT.ID_STAGE IS 'Number of stage';

COMMENT ON COLUMN PROJECT.START_DAY IS 'Start';

COMMENT ON COLUMN PROJECT.END_DAY IS 'End';
