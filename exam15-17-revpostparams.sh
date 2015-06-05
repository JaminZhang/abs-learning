#!/bin/bash

set a\ b c d\ e;

OIFS=$IFS; IFS=:;

echo

until [ $# -eq 0 ]
do
    echo "### k0 = "$k""
    k=$1:$k;

    echo "### K = "$k""
    echo
    shift;
done

set $k
echo -
echo $#
echo -
echo

for i
do
    echo $i
done

IFS=$OIFS

exit 0
