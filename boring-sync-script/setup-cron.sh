#!/bin/bash

# Sets up a cron job to run the sync script on a regular interval.
# This script is dumb, and assumes things are aligned the way the are in the git repo

CRONFILE=boring-sync-cron
INSTALL_DIR=/usr/local/bin/
SCRIPT=boring-sync.sh

# copy the script somewhere
sudo cp ./$SCRIPT $INSTALL_DIR

crontab $CRONFILE
