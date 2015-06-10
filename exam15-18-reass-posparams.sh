#!/bin/bash

variable="one two three four five"

set -- $variable

first_param=$1
second_param=$2
shift; shift

remaining_params="$*"

echo
echo "first parameter = $first_param"
echo "second parameter = $second_param"
echo "remaining parameters = $remaining_params"

echo; echo

set -- $variable
first_param=$1
second_param=$2
echo "first parameter = $first_param"
echo "second parameter = $second_param"

set --

first_param=$1
second_param=$2
echo "first parameter = $first_param"
echo "second parameter = $second_param"

exit 0
