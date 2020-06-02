DEFINE USER_NAME = &&1

SPOOL 'log.log'

@drop_tablespaces.sql &&USER_NAME
@drop_schema.sql &&USER_NAME

SPOOL OFF