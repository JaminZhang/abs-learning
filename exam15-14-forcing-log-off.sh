#!/bin/bash

SERPORT=ttyS3

killppp="eval kill -9 `ps ax | awk '/ppp/ { print $1 }'`"

$killppp

chmod 666 /dev/$SERPORT

rm /var/lock/LCK..$SERPORT

exit $?
