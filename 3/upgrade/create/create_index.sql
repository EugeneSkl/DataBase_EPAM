DEFINE USER_NAME = &&1
DEFINE DATA_TABLESPACE = '&&USER_NAME._DATA'
DEFINE INDEX_TABLESPACE = '&&USER_NAME._IDX'

ALTER TABLE EMPLOYEE_ROLE ADD CONSTRAINT PK_EMPLOYEE_ROLE PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE EMPLOYEE_ROLE MOVE TABLESPACE &&DATA_TABLESPACE;

ALTER TABLE EMPLOYEE_PROJECT ADD CONSTRAINT PK_EMPLOYEE_PROJECT PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE EMPLOYEE_PROJECT MOVE TABLESPACE &&USER_NAME&&DATA;

ALTER TABLE DEPARTMENT ADD CONSTRAINT PK_DEPARTMENT PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE DEPARTMENT MOVE TABLESPACE &&DATA_TABLESPACE;

ALTER TABLE TEAM ADD CONSTRAINT PK_TEAM PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE TEAM MOVE TABLESPACE &&DATA_TABLESPACE;

ALTER TABLE TASK ADD CONSTRAINT PK_TASK PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE TASK MOVE TABLESPACE &&DATA_TABLESPACE;

ALTER TABLE STATUS  ADD CONSTRAINT PK_STATUS_TASK  PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE STATUS  MOVE TABLESPACE &&DATA_TABLESPACE;

ALTER TABLE STAGE ADD CONSTRAINT PK_STAGE  PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE STAGE MOVE TABLESPACE &&DATA_TABLESPACE;

ALTER TABLE SKILLS ADD CONSTRAINT PK_SKILLS PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE SKILLS MOVE TABLESPACE &&DATA_TABLESPACE;

ALTER TABLE ROLE ADD CONSTRAINT PK_ROLE PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE ROLE MOVE TABLESPACE &&DATA_TABLESPACE;


ALTER TABLE EMPLOYEE ADD CONSTRAINT PK_EMPLOYEE PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE EMPLOYEE MOVE TABLESPACE &&DATA_TABLESPACE;

ALTER TABLE PROJECT ADD CONSTRAINT PK_PROJECT PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE PROJECT MOVE TABLESPACE &&DATA_TABLESPACE;

ALTER TABLE SKILL_EMPLOYEE  ADD CONSTRAINT PK_SKILL_EMPLOYEE  PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE SKILL_EMPLOYEE  MOVE TABLESPACE &&DATA_TABLESPACE;


ALTER TABLE EMPLOYEE_TASK ADD CONSTRAINT PK_EMPLOYEE_TASK PRIMARY KEY (ID) USING INDEX TABLESPACE &&INDEX_TABLESPACE;
ALTER TABLE EMPLOYEE_TASK MOVE TABLESPACE &&DATA_TABLESPACE;




ALTER TABLE EMPLOYEE_ROLE ADD CONSTRAINT fk_EMPLOYEE_ROLE_ID_PERSON FOREIGN KEY(ID_PERSON)
REFERENCES EMPLOYEE (ID_PERSON);

ALTER TABLE EMPLOYEE_ROLE ADD CONSTRAINT fk_EMPLOYEE_ROLE_ID_ROLE FOREIGN KEY(ID_ROLE)
REFERENCES ROLE (ID_ROLE);


ALTER TABLE EMPLOYEE_PROJECT ADD CONSTRAINT fk_EMPLOYEE_PROJECT_ID_PROJECT FOREIGN KEY(ID_PROJECT)
REFERENCES PROJECT (ID_PROJECT);

ALTER TABLE EMPLOYEE_PROJECT ADD CONSTRAINT fk_EMPLOYEE_PROJECT_ID_PERSON FOREIGN KEY(ID_PERSON)
REFERENCES EMLOYEE (ID_PERSON);


ALTER TABLE TASK ADD CONSTRAINT fk_TASK_ID_PROJECT FOREIGN KEY(ID_PROJECT)
REFERENCES PROJECT (ID_PROJECT);

ALTER TABLE TASK ADD CONSTRAINT fk_TASK_ID_STATUS FOREIGN KEY(ID_STATUS)
REFERENCES STATUS (ID_STATUS);

ALTER TABLE TASK ADD CONSTRAINT fk_TASK_ID_TEAM FOREIGN KEY(ID_TEAM)
REFERENCES TEAM (ID_TEAM);


ALTER TABLE SKILL_EMPLOYEE  ADD CONSTRAINT fk_SKILL_EMPLOYEE_ID_PERSON FOREIGN KEY(ID_PERSON)
REFERENCES EMPLOYEE (ID_PERSON);

ALTER TABLE SKILL_EMPLOYEE  ADD CONSTRAINT fk_SKILL_EMPLOYEE_ID_SKILL FOREIGN KEY(ID_SKILL)
REFERENCES SKILLS (ID_SKILL);

ALTER TABLE PROJECT ADD CONSTRAINT fk_PROJECT_ID_STAGE FOREIGN KEY(ID_STAGE)
REFERENCES STAGE (ID_STAGE);


ALTER TABLE EMPLOYEE_TASK ADD CONSTRAINT fk_EMPLOYEE_TASK_ID_PERSON FOREIGN KEY(ID_PERSON)
REFERENCES EMPLOYEE (ID_PERSON);

ALTER TABLE EMPLOYEE_TASK ADD CONSTRAINT fk_EMPLOYEE_TASK_ID_TASK FOREIGN KEY(ID_TASK)
REFERENCES TASK (ID_USER);


ALTER TABLE EMPLOYEE ADD CONSTRAINT fk_EMPLOYEE_ID_DEPARTMENT FOREIGN KEY(ID_DEPARTMENT)
REFERENCES DEPARTMENT (ID_DEPARTMENT);

ALTER TABLE EMPLOYEE ADD CONSTRAINT fk_EMPLOYEE_ID_TEAM FOREIGN KEY(ID_TEAM)
REFERENCES TEAM (ID_DEPARTMENT);


UNDEFINE USER_NAME
UNDEFINE DATA_TABLESPACE
UNDEFINE INDEX_TABLESPACE

