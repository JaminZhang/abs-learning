#!/bin/bash

echo

echo "This line appears ONCE in the script, yet it keeps echoing."
echo "The PID of this instance of the script is still $$."

echo "==================== Hit Ctl-C to exit ===================="

sleep 1

exec $0

echo "This line will never echo!"

exit 99
