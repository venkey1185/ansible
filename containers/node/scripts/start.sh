#!/bin/bash
sed -i "s/hostname=localhost/hostname=hdp-master-01.hcc.com/" /etc/ambari-agent/conf/ambari-agent.ini
ambari-agent start

while true; do
  sleep 3
  tail -f /var/log/ambari-agent/ambari-agent.log
done
