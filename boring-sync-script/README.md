boring-sync-script
==================

The script that I run to backup to s3 (and Glacier) files on my server.


Be CAREFUL with 'RemoteArchive'! It uses s3cmd to sync up to s3. A bunch of it archives to Glacier too.

In my setup, everything in the directory "archive" gets synced to glacier in (2) days. 

