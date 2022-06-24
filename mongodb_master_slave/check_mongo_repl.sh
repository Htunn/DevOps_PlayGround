#!/usr/bin/bash

# check mongodb master status

echo "##############################################################"
echo "#######checking mongodb master status#######"

mongo -u admin -p'ECLUC!em3fxtZ6f7' <<-NOSQL
    rs.status().optimes.lastCommittedOpTime.ts
    rs.status().lastStableCheckpointTimestamp
    rs.status().members[0].name
    rs.status().members[0].health
    rs.status().members[0].lastHeartbeatRecv
    rs.status().members[0].pingMs
    rs.conf().members[0].priority
    rs.status().members[0].stateStr
    rs.status().members[0].optimeDate
NOSQL

echo "##############################################################"
echo "######checking mongodb slave 1 health,pings,priority#########"
echo "##############################################################"

mongo -u admin -p'ECLUC!em3fxtZ6f7' <<-NOSQL
    rs.status().members[1].name
    rs.status().members[1].health
    rs.status().members[1].lastHeartbeatRecv
    rs.status().members[1].pingMs
    rs.conf().members[1].priority
    rs.status().members[1].stateStr
    rs.status().members[1].optimeDate
NOSQL

echo "#########checking mongodb slave 2 health,pings,priority######
###################################################################
###################################################################"

mongo -u admin -p'ECLUC!em3fxtZ6f7' <<-NOSQL
    rs.status().members[2].name
    rs.status().members[2].health
    rs.status().members[2].lastHeartbeatRecv
    rs.status().members[2].pingMs
    rs.conf().members[2].priority
    rs.status().members[2].stateStr
    rs.status().members[2].optimeDate
NOSQL

echo "### check replication info #####"
echo "##############################################################"
echo "##############################################################"

mongo -u admin -p'ECLUC!em3fxtZ6f7' <<-NOSQL
    rs.status().date
    rs.printReplicationInfo()
    rs.printSecondaryReplicationInfo()
NOSQL