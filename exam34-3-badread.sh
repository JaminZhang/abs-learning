#!/bin/bash

#shopt -s lastpipe

a=aaa
b=bbb
c=ccc

echo "one two three" | read a b c

echo
echo "a = $a"
echo "b = $b"
echo "c = $c"

var=`echo "one two three"`
set -- $var
a=$1; b=$2; c=$3

echo "-------"
echo "a = $a"
echo "b = $b"
echo "c = $c"

a=aaa
b=bbb
c=ccc

echo; echo
echo "one two three" | ( read a b c;
echo "Inside subshell: "; echo "a = $a"; echo "b = $b"; echo "c = $c" )
echo "-----------------"
echo "Outside subshell: "
echo "a = $a"
echo "b = $b"
echo "c = $c"
echo

exit 0

