#!/bin/bash

ORIGINAL=Smith
REPLACEMENT=Jones

for word in $(fgrep -l $ORIGINAL *.txt)
do
    ex $word <<EOF
    :%s/$ORIGINAL/$REPLACEMENT/g
    :wq
    EOF
done


