#!/usr/bin/bash

# promote mysql slave to master 
# before running this script pls note the mysql master status with this mysql command
# mysql> SHOW MASTER STATUS\G;

# define require variables for mysql login
SLAVE_HOST=
USER=
PASS=

# define mysql master variables

MASTER_IP=
MASTER_USER=
MASTER_PASS=
MASTER_LOG=
MASTER_LOG_POS=

echo "start promoting mysql slave to master"

mysql -h $SLAVE_HOST "-u$USER" -p'' <<-EOSQL &
  STOP  SLAVE;
  RESET MASTER;
  SET GLOBAL read_only=OFF;
  CHANGE MASTER TO MASTER_HOST='${MASTER_IP}',MASTER_USER='${MASTER_USER}', MASTER_PASSWORD='', MASTER_LOG_FILE='${MASTER_LOG}', MASTER_LOG_POS=${MASTER_LOG_POS};
  SHOW SLAVE STATUS\G
  SHOW SLAVE HOSTS;
EOSQL
