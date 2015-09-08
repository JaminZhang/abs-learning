#!/bin/bash

trap 'echo Variable Listing --- a = $a  b = $b' EXIT

echo "This prints before the \"trap\" --"
echo "even though the script sees the \"trap\" first."
echo

a=39

b=36

exit 0
