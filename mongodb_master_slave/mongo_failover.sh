#!/usr/bin/bash

# enter mongodb username and password

mongo -u admin -p'dffdsghgeeg' --authenticationDatabase admin <<-EOF 
  cfg = rs.conf()
  cfg.members[0].priority = 0.5
  cfg.members[1].priority = 1
  rs.reconfig(cfg)
  quit()
EOF

echo "successfully failover to primary"
exit 0
