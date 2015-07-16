#!/bin/bash

umask 177

OUTFILE=decrypted.txt

cat "$@" | tr 'a-zA-Z' 'n-za-mN-ZA-M' > $OUTFILE

exit 0
