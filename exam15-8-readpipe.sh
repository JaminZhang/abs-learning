#!/bin/bash

shopt -s lastpipe

last="(null)"
cat $0 |
while read line
do
    echo "{$line}"
    last=$line
done

echo
echo "++++++++++++++++++++++"
printf "\nAll done, last: $last\n"

exit 0
