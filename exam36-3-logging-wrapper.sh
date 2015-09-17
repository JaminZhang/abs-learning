#!/bin/bash

DEFAULT_LOGFILE=logfile.txt

OPERATION=
LOGFILE=

if [ -z "$LOGFILE" ]
then
    LOGFILE="$DEFAULT_LOGFILE"
fi

OPTIONS="$@"

echo "`date` + `whoami` + $OPERATION "$@"" >> $LOGFILE

exec $OPERATION "$@"
