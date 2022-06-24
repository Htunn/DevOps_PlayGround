#!/usr/bin/bash

# enter mongodb username and password

mongo -u mongo-admin -p password --authenticationDatabase admin <<-EOF 
  cfg = rs.conf()
  cfg.members[0].priority = 0.5
  cfg.members[1].priority = 1
  rs.reconfig(cfg)
  quit()
EOF

echo "successfully failover to primary"
exit 0

