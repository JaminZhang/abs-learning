#!/bin/bash

echo_var ()
{
    echo "$1"
}

message=Hello
Hello=Goodbye

echo_var "$message"
echo_var "${!message}"

echo "-------------"
Hello="Hello, again!"
echo_var "$message"
echo_var "${!message}"

exit 0
