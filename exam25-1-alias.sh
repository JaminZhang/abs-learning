#!/bin/bash

shopt -s expand_aliases

alias Jesse_James='echo "\"Alias Jesse James\" was a 1959 comedy starring Bob Hope."'
Jesse_James

echo; echo; echo;

alias ll="ls -l"

echo "Trying aliased \"ll\":"
ll /usr/X11R6/bin/mk*

echo

directory=/usr/X11R6/bin/
prefix=mk*
echo "Variables \"directory\" + \"prefix\" = $directory$prefix"
echo

alias lll="ls -l $directory$prefix"

echo "Trying aliased \"lll\":"
lll

TRUE=1

echo

if [ TRUE ]
then
    alias rr="ls -l"
    echo "Trying aliased \"rr\" within if/then statement:"
    rr /usr/X11R6/bin/mk*
    echo "However, previously expanded alias still recognized:"
    ll /usr/X11R6/bin/mk*
fi

echo


count=0
while [ $count -lt 3 ]
do
    alias rrr="ls -l"
    echo "Trying aliased \"rrr\" within \"while\" loop:"
    rrr /usr/X11R6/bin/mk*

    let count+=1
done

echo; echo

alias xyz='cat $0'

xyz

exit 0
