#!/usr/bin/bash

# promote mysql slave to master 
# before running this script pls note the mysql master status with this mysql command
# mysql> SHOW MASTER STATUS\G;

# define require variables for mysql login
SLAVE_HOST=""
USER="root"
PASS=""

# define mysql master variables

echo "checking slave status"

mysql -h $SLAVE_HOST -u $USER -p'vewgweqhhe4' <<-EOSQL 
      SHOW SLAVE STATUS\G
EOSQL