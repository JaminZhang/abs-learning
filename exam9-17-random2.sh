#!/bin/bash

AWKSCRIPT=' { srand(); print rand() } '

echo -n "Random number between 0 and 1 = "

echo | awk "$AWKSCRIPT"

exit 0
