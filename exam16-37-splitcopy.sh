#!/bin/bash

CHUNKSIZE=4
OUTPREFIX=xx

csplit "$0" "$CHUNKSIZE"

cat "$OUTPREFIX"* >"$0.copy"
rm "$OUTPREFIX"*

exit $?
