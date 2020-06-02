DEFINE USER_NAME = &&1

SET SERVEROUTPUT ON

GRANT connect, resource, CREATE session, CREATE any table, CREATE any view, CREATE type,
CREATE procedure, CREATE synonym, create trigger, create sequence, create materialized view, query rewrite
TO &USER_NAME;

ALTER USER &&USER_NAME QUOTA UNLIMITED ON &&USER_NAME._DATA;
ALTER USER &&USER_NAME QUOTA UNLIMITED ON &&USER_NAME._IDX;

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME