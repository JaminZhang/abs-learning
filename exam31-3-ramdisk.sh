#!/bin/bash

E_NON_ROOT_USER=70
ROOTUSER_NAME=root

MOUNTPT=/mnt/ramdisk
SIZE=2000
BLOCKSIZE=1024
DEVICE=/dev/ram0

username=`id -nu`
if [ "$username" != "$ROOTUSER_NAME" ]
then
    echo "Must be root to run \"`basename $0`\"."
    exit $E_NON_ROOT_USER
fi

if [ ! -d "$MOUNTPT" ]
then
    mkdir $MOUNTPT
fi

dd if=/dev/zero of=$DEVICE count=$SIZE bs=$BLOCKSIZE

mke2fs $DEVICE
mount $DEVICE $MOUNTPT
chmod 777 $MOUNTPT

echo "\"$MOUNTPT\" now available for use."

exit 0
