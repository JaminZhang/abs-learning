#!/bin/bash

ROOT_UID=0
E_NOTROOT=65
E_NOPARAMS=66

if [ "$UID" -ne "$ROOT_UID" ]
then
    echo "Must be root to run this script."
    exit $E_NOTROOT
fi

if [ -z "$1" ]
then
    echo "Usage: `basename $0` find-string"
    exit $E_NOPARAMS
fi

echo "Updating 'locate' database..."
echo "This may take a while."
updatedb &

wait

locate $1

exit 0
