#!/bin/bash

umask 177

TRUE=1
LOGFILE=/var/log/messages

TEMPFILE=temp.$$

KEYWORD=address

ONLINE=22
USER_INTERRUPT=13
CHECK_LINES=100

trap 'rm -f $TEMPFILE; exit $USER_INTERRUPT' TERM INT

echo

while [ $TRUE ]
do
    tail -n $CHECK_LINES $LOGFILE> $TEMPFILE
    search=`grep $KEYWORD $TEMPFILE`

    if [ ! -z "$search" ]
    then
        echo "On-line"
        rm -f $TEMPFILE
        exit $ONLINE
    else
        echo -n "."
    fi

    sleep 1
done

exit 0
