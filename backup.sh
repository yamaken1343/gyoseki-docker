#!/bin/sh

BKTO=/backup
BKFROM=/home/archive/
BKTARGET=gyoseki-docker
BKNAME=$BKTO/$(date "+%s_%Y_%m_%d").tar.gz

# Backup
tar cfz "$BKNAME" -C $BKFROM $BKTARGET

# Delete files 10 days ago
FILENUM=$(ls -1 | wc -l)
if [ "$FILENUM" -gt 10 ]; then
    # shellcheck disable=SC2038
    find $BKTO -mtime +10 |xargs rm -rf
fi