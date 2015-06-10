#!/bin/bash

. data-file

echo "variable1 (from data-file) = $variable1"
echo "variable3 (from data-file) = $variable3"

let "sum = $variable2 + $variable4"
echo "Sum of variable2 + variable4 (from data-file) = $sum"
echo "message1 (from data-file) is \"$message1\""
echo "message2 (from data-file) is \"$message2\""

print_message This is the message-print function in the data-file.

exit $?
