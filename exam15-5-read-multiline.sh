#!/bin/bash

echo

echo "Enter a string terminated by a \\, then press <ENTER>."
echo "Then, enter a second string (no \\ this time), and again press <ENTER>."

read var1
echo "var1 = $var1"

echo; echo

echo "Enter another string terminated by a \\, then press <ENTER>."
read -r var2

echo "var2 = $var2"

echo

exit 0
