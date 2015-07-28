#!/bin/bash

: <<COMMENTBLOCK
echo "This line will not echo."
This is a comment line missing the "#" prefix.
This is another comment line missing the "#" prefix.

&*@!!++=
The above line will cause no error message,
because the Bash interpreter will ignore it.
COMMENTBLOCK

echo "Exit value of above \"COMMENTBLOCK\" is $?."

echo

echo "Just before commented-out code block."
: <<DEBUGXXX
for file in *
do
    cat "$file"
done
DEBUGXXX
echo "Just after commented-out code block."

exit 0
