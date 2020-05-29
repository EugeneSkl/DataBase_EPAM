DEFINE USER_NAME = &&1

SPOOL 'drop\log.log'

@drop\drop_tablespaces.sql &&USER_NAME
@drop\drop_schema.sql &&USER_NAME

SPOOL OFF