#!/bin/bash
# Embedding Ctl-H in a string.

#a="^H^H"
a=$'\010\010'
#a=$'\b\b'
#a=$'\x08\x08'

echo "abcdef"
echo
echo -n "abcdef$a "
echo
echo -n "abcdef$a"

echo; echo

rubout=$'\b\b\b\b\b'

echo -n "12345678"
sleep 2
echo -n "$rubout"
sleep 2
