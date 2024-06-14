#!/bin/bash

# This script mitigates the fact that for some reason
# Docker Desktop adds "credsStore": "desktop" to ~/.docker/config.json
# when opened, but credsStore is an invalid key, and causes docker auth errors.

# This script can be executed at boot by running the install-docker-fix.sh
# script in this directory.

echo '*************************************************'
echo 'Docker Desktop Config Corruption Mitigation Watcher Script'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'


CHECK_INTERVAL=2
WAIT_INTERVAL=10
FILE="$HOME/.docker/config.json"
LAST_UPDATE=`ls -l "$FILE"`
while true; do
  sleep $CHECK_INTERVAL
  CURRENT_STATE=`ls -l "$FILE"`
  if [ "$CURRENT_STATE" != "$LAST_UPDATE" ]; then
    sed -i s/credsStore/credStore/g "$FILE"
    # This sleep prevents a potential infinite loop when docker detects a change to the config
    sleep $WAIT_INTERVAL
    LAST_UPDATE=`ls -l "$FILE"`
  fi
done
