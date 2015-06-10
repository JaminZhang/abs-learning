#!/bin/bash

E_BADARGS=66

if test -z "$1"
then
    echo "Usage: `basename $0` Process(es)_to_kill "
    exit $E_BADARGS
fi

PROCESS_NAME="$1"
ps ax | grep "$PROCESS_NAME" | awk '{print $1}' | xargs -i kill {} 2&>/dev/null

exit $?
