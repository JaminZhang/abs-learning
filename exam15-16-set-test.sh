#!/bin/bash

echo
echo "Positional parameters before set \`uname -a\` :"
echo "Command-line argument #1 = $1"
echo "Command-line argument #2 = $2"
echo "Command-line argument #3 = $3"

set `uname -a`

echo
echo +++++
echo $_
echo $-
echo

echo "Positional parameters after set \`uname -a\' "
echo "Field #1 of 'uname -a' = $1"
echo "Field #2 of 'uname -a' = $2"
echo "Field #3 of 'uname -a' = $3"
echo \#\#\#
echo $_
echo

exit 0

