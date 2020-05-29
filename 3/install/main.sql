DEFINE USER_NAME = &&1
DEFINE TBS_LOCATION =  &&2


SPOOL 'install.log'

@install\create_tablespaces.sql &&USER_NAME &&TBS_LOCATION 
@install\create_user.sql &&USER_NAME
@install\grants.sql &&USER_NAME
SPOOL OFF