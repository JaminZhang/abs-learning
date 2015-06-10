#!/bin/bash

SPEED=10
IMAGEFILE=cdimage.iso
CONTENTFILE=contents
DEVICE="1,0,0"
DEFAULTDIR=/opt

if [ -z "$1" ]
then
    IMAGE_DIRECTORY=$DEFAULTDIR
else
    IMAGE_DIRECTORY=$1
fi

ls -lRF $IMAGE_DIRECTORY > $IMAGE_DIRECTORY/$CONTENTFILE
echo "Creating table of contents."

mkisofs -r -o $IMAGEFILE $IMAGE_DIRECTORY
echo "Creating ISO9660 file system image ($IMAGEFILE)."

echo "Burning the disk."
echo "Please be patient, this will take a while."
wodim -v -isosize dev=$DEVICE $IMAGEFILE
exitcode=$?
echo "Exit code = $exitcode"

exit $exitcode

