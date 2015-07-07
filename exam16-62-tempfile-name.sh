#!/bin/bash

BASE_STR=`mcookie`
POS=11
LEN=5

prefix=temp

suffix=${BASE_STR:POS:LEN}

temp_filename=$prefix.$suffix

echo "Temp filename = "$temp_filename""

exit 0
