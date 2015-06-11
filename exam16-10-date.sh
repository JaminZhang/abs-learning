#!/bin/bash

echo "The number of days since the year's beginning is `date +%j`."

echo "The number of seconds elapsed since 01/01/1970 is `date +%s`."

prefix=temp
suffix=$(date +%s)
filename=$prefix.$suffix
echo "Temporary filename = $filename"

exit 0
