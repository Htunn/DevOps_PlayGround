#!/usr/bin/bash

# enter mongodb username and password

MASTER_HOST=db-uat
USER=mongo-admin
PASS="password"
AUTH_DB="admin"


mongo --host "$MASTER_HOST" -u "$USER" -p "$PASS" --authenticationDatabase "$AUTH_DB" << EOF 
  rs.status().optimes.lastCommittedOpTime.ts
  rs.status().lastStableCheckpointTimestamp
  rs.status().members[0].name
  rs.status().members[0].health
  rs.status().members[0].lastHeartbeatRecv
  rs.status().members[0].pingMs
  rs.conf().members[0].priority
  rs.status().members[0].stateStr
  rs.status().members[0].optimeDate
  rs.status().members[1].name
  rs.status().members[1].health
  rs.status().members[1].lastHeartbeatRecv
  rs.status().members[1].pingMs
  rs.conf().members[1].priority
  rs.status().members[1].stateStr
  rs.status().members[1].optimeDate
  rs.status().members[2].name
  rs.status().members[2].health
  rs.status().members[2].lastHeartbeatRecv
  rs.status().members[2].pingMs
  rs.conf().members[2].priority
  rs.status().members[2].stateStr
  rs.status().members[2].optimeDate
  rs.status().date
  rs.printReplicationInfo()
  rs.printSecondaryReplicationInfo()
EOF
