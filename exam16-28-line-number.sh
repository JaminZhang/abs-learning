#!/bin/bash

echo "     line number = $LINENO"

nl `basename $0`

echo; echo

cat -n `basename $0`

exit 0
