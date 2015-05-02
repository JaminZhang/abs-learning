#!/bin/bash

# Backs up all files in current directory modified with last 24 hours in a "tarall" (tarred and gzipped file).

BACKUPFILE=backup-$(date +%m-%d-%Y)
#                   Embed date in backup filename.

archive=${1:-$BACKUPFILE}
# If no backup-archive filename specified on command-line, it will default to "backup--MM-DD-YYYY.tar.gz."

tar cvf - `find . -mtime -1 -type f -print` > $archive.tar
gzip $archive.tar
echo "Directory $PWD backed up in archive file \"$archive.tar.gz\"."
