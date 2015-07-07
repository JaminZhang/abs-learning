#!/bin/bash

infile=$0
outfile=log.txt
n=8
p=11

dd if=$infile of=$outfile bs=1 skip=$((n-1)) count=$((p-n+1)) 2>/dev/null

echo -n "hello vertical world" | dd cbs=1 conv=unblock 2>/dev/null

exit $?
