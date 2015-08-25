#!/bin/bash

if [ ! -z "$1" ] && echo "Argument #1 = $1" && [ ! -z "$2" ] && \
echo "Argument #2 = $2"
then
    echo "At least 2 arguments passed to script."
else
    echo "Fewer than 2 arguments passed to script."
fi

if [ ! -z "$1" ]
then
    echo "Argument #1 = $1"
fi
if [ ! -z "$2" ]
then
    echo "Argument #2 = $2"
    echo "At least 2 arguments passed to script."
else
    echo "Fewer than 2 arguments passed to script."
fi

exit $?
