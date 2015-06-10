#!/bin/bash

exit 99

dangerous_variable=`cat /boot/vmlinuz`

echo "string-length of \$dangerous_variable = ${#dangerous_variable}"

exit 0
