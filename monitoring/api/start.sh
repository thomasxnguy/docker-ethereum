#!/bin/bash
set -e
cd /root/eth-net-intelligence-api
perl -pi -e "s/XXX/$(hostname)/g" app.json
/usr/bin/pm2 start ./app.json
trap 'exit 143' SIGTERM # exit = 128 + 15 (SIGTERM)
tail -f /root/.pm2/logs/node-app-out-0.log
