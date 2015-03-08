#!/bin/bash

# AWS bucket: btg-backup-archive
# http://s3tools.org/s3cmd-sync
# http://linux.die.net/man/1/s3cmd

#/media/Backups/RemoteArchive

# directories to archive
ARCHIVE_DIRS=(/media/Backups/RemoteArchive/)

BUCKET="btg-backup-archive/"

LOCKFILE=/var/run/s3backup.pid

# TODO mark the file as non-overwrite

# s3cmd --recursive  put .  s3://btg-backup-archive/

echo "Subject: `hostname`'s Backup Log: `date`"

# iterate over array of dirs to sync, syncing them
for path in ${ARCHIVE_DIRS[*]}
do
	echo "Starting $path"
	# uhhh, run the backup for that dir
	/usr/local/bin/s3cmd -v --recursive sync $path  s3://$BUCKET

	echo "Done"
	echo ""
done

echo "Done with Backup at `date`"
