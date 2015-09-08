#!/bin/bash

LIMIT=$1
NUMPROC=4
PROCID=1
echo "My PID is $$"

function start_thread() {
    if [ $PROCID -le $LIMIT ] ; then
        ./child.sh $PROCID&
        let "PROCID++"
    else
        echo "Limit reached."
        wait
        exit
    fi
}

while [ "$NUMPROC" -gt 0 ]; do
    start_thread;
    let "NUMPROC--"
done

while true
do
    trap "start_thread" SIGRTMIN
done

exit 0
