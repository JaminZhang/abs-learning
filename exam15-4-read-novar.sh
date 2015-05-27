#!/bin/bash
# read-novar.sh
echo

echo -n "Enter a value: "
read var
echo "\"var\" = "$var""

echo
echo -n "Enter another value: "
read
var="$REPLY"
echo "\"var\" = "$var""

echo
echo "========================="
echo

{
    read
    read line2
} < $0
echo "Line 2 of this script is:"
echo "$line2"
echo

exit 0
