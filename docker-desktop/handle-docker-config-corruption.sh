#!/bin/bash

# This script mitigates the fact that for some reason
# Docker Desktop adds "credsStore": "desktop" to ~/.docker/config.json
# when opened, but credsStore is an invalid key, and causes docker auth errors.

# This script can be executed at boot by adding it to the *Startup Applications* app.

FILE="$HOME/.docker/config.json"
LAST=`ls -l "$FILE"`
while true; do
  sleep 2
  NEW=`ls -l "$FILE"`
  if [ "$NEW" != "$LAST" ]; then
    sed -i s/credsStore/credStore/g "$HOME/.docker/config.json"
    sleep 10
    LAST=`ls -l "$FILE"`
  fi
done
