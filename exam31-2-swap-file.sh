#!/bin/bash

ROOT_UID=0
E_WRONG_USER=85

FILE=/swap
BLOCKSIZE=1024
MINBLOCKS=40
SUCCESS=0

if [ "$UID" -ne "$ROOT_UID" ]
then
    echo; echo "You must be root to run this script."; echo
    exit $E_WRONG_USER
fi

blocks=${1:-$MINBLOCKS} 

if [ "$blocks" -lt $MINBLOCKS ]
then
    blocks=$MINBLOCKS
fi

echo "Creating swap file of size $blocks blocks (KB)."
dd if=/dev/zero of=$FILE bs=$BLOCKSIZE count=$blocks  # Zero out file.
mkswap $FILE $blocks
swapon $FILE
retcode=$?

echo "Swap file created and activated."

exit $retcode
