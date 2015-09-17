#!/bin/bash

ARGS=3
E_BADARGS=85

if [ $# -ne "$ARGS" ]
then
    echo "Usage: `basename $0` old-pattern new-pattern filename"
    exit $E_BADARGS
fi

old_pattern=$1
new_pattern=$2

if [ -f "$3" ]
then
    file_name=$3
else
    echo "File \"$3\" does not exist."
    exit $E_BADARGS
fi

sed -e "s/$old_pattern/$new_pattern/g" $file_name

exit $?
