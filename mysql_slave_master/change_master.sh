#!/usr/bin/bash

# promote mysql slave to master 
# before running this script pls note the mysql master status with this mysql command
# mysql> SHOW MASTER STATUS\G;

# define require variables for mysql login
SLAVE_HOST="localhost"
USER="root"
PASS=""

# define mysql master variables

MASTER_IP="1"
MASTER_USER="root"
MASTER_PASS=""
MASTER_LOG=""
MASTER_LOG_POS=""

echo "start promoting mysql slave to master"

mysql -h $SLAVE_HOST "-u$USER" -p'sfedg3qhe4h3' <<-EOSQL &
  STOP  SLAVE;
  RESET MASTER;
  CHANGE MASTER TO MASTER_HOST='${MASTER_IP}',MASTER_USER='${MASTER_USER}', MASTER_PASSWORD='B3xJ4Umou*wdg$s@96', MASTER_LOG_FILE='${MASTER_LOG}', MASTER_LOG_POS=${MASTER_LOG_POS};
  START SLAVE;
  SHOW SLAVE STATUS\G
EOSQL
