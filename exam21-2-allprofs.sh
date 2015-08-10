#!/bin/bash

FILE=.bashrc

for home in `awk -F: '{print $6}' /etc/passwd`
do
    [ -d "$home" ] || continue
    [ -r "$home" ] || continue
    (cd $home; [ -e $FILE ] && less $FILE)
done

exit 0
