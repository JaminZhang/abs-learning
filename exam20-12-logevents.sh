#!/bin/bash

ROOT_UID=0
E_NOTROOT=67

if [ "$UID" -ne "$ROOT_UID" ]
then
    echo "Must be root to run this script."
    exit $E_NOTROOT
fi

FD_DEBUG1=3
FD_DEBUG2=4
FD_DEBUG3=5

LOG_EVENTS=3
# LOG_VARS=1

log()
{
    echo "$(date)  $*" >&7
}

case $LOG_LEVEL in
    1) exec 3>&2         4> /dev/null 5> /dev/null;;
    2) exec 3>&2         4>&2         5> /dev/null;;
    3) exec 3>&2         4>&2         5>&2;;
    *) exec 3> /dev/null 4> /dev/null 5> /dev/null;;
esac

FD_LOGVARS=6
if [[ $LOG_VARS ]]
then exec 6>> /var/log/vars.log
else exec 6> /dev/null
fi

FD_LOGEVENTS=7
if [[ $LOG_EVENTS ]]
then
    exec 7>> /var/log/event.log 
    log
else exec 7> /dev/null 
fi

echo "DEBUG3: beginning" >&${FD_DEBUG3}

ls -l >&5 2>&4

echo "Done" 

echo "sending mail" >&${FD_LOGEVENTS}

exit 0
