#!/bin/bash

: ${1?"Usage: `basename $0` target-file"}

TEMPFILE=$$.cpio

rpm2cpio < $1 > $TEMPFILE

cpio --make-directories -F $TEMPFILE -i 
rm -f $TEMPFILE

exit 0
