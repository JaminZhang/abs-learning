#!/bin/bash

echo
echo -n "Enter password "
read passwd
echo "password is $passwd"
echo -n "If someone had been looking over your shoulder, "
echo "your password would have been compromised."

echo && echo

stty -echo

echo -n "Enter password again "
read passwd
echo
echo "password is $passwd"
echo

stty echo

exit 0
