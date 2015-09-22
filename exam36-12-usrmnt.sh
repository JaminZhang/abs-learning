#!/bin/bash

if [ -z "$SUDO_COMMAND" ]
then
    mntusr=$(id -u) grpusr=$(id -g) sudo $0 $*
    exit 0
fi

/bin/mount $* -o uid=$mntusr,gid=$grpusr

exit 0
