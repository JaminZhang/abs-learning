#!/bin/bash

interval=1
long_interval=10

{
    trap "exit" SIGUSR1
    sleep $interval; sleep $interval
    while true
    do
        echo -n '.'
        sleep $interval
    done; } &

pid=$!
trap "echo !; kill -USR1 $pid; wait $pid" EXIT

echo -n 'Long-running process '
sleep $long_interval
echo 'Finished!'

kill -USR1 $pid
wait $pid 
trap EXIT

exit $?
