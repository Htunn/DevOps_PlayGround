#!/usr/bin/bash

# check mysql master status

MASTER_HOST="localhost"
USER=root
PASS="B3xJ4Umou*wdg$s@96"

echo "##############################################################"
echo "#######checking mysql master status#######"

mysql -h $MASTER_HOST -u$USER -p'B3xJ4Umou*wdg$s@96' <<-EOSQL
      SHOW MASTER STATUS\G
EOSQL

echo "##############################################################"
echo "######checking mysql slave status#########"

mysql -h $MASTER_HOST -u$USER -p'B3xJ4Umou*wdg$s@96' <<-EOSQL
      SHOW SLAVE HOSTS\G
EOSQL

echo "##############################################################"
echo "#######checking mysql slave processlist#######"

mysql -h $MASTER_HOST -u$USER -p'B3xJ4Umou*wdg$s@96' <<-EOSQL
      SHOW PROCESSLIST \G
EOSQL

echo "###############################################################
###############################################################
###############################################################"

# check mysql replication status

# define require variables for mysql login
REPLICA_HOST="db-ha-b db-ha-c"
REPLICA_USER=root
REPLICA_PASS="B3xJ4Umou*wdg$s@96"



echo "######start checking mysql slave replication#########"

for HOST in $REPLICA_HOST
do
    mysql -h $HOST -u$REPLICA_USER -p'B3xJ4Umou*wdg$s@96' <<-EOSQL
      SHOW SLAVE STATUS\G
EOSQL
    echo "###############################################################"
done
