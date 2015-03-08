#!/bin/bash

DATE=`date "+%F-%T"`
LOGFILE_NAME="backup-log-$DATE.log"

# -nv for dry run, verbose
time rsync -avz  ~/Dropbox/Photos/Imported/ borgel@Arazu.local:/media/Backups/RemoteArchive/Photos/Imported | tee $LOGFILE_NAME
