#!/bin/bash

echo -n "What is your name? "
read name

echo "Your name is $name."

stty erase '#'
echo -n "What is your name? "
read name
echo "Your name is $name."

exit 0
