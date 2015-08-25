#!/bin/bash

ARGS=1
E_BADARGS=85

test $# -ne $ARGS && \
echo "Usage: `basename $0` $ARGS argument(s)" && exit $E_BADARGS

echo "Correct number of arguments passed to this script."

exit 0
