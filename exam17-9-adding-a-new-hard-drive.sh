#!/bin/bash

ROOT_UID=0
E_NOTROOT=67

if [ "$UID" -ne "$ROOT_UID" ]
then
    echo "Must be root to run this script."
    exit $E_NOTROOT
fi

NEWDISK=/dev/hdb
MOUNTPOINT=/mnt/newdisk

fdisk $NEWDISK
mke2fs -cv $NEWDISK1

mkdir $MOUNTPOINT
chmod 777 $MOUNTPOINT

exit
