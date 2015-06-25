#!/bin/bash

WIDTH=40

b=`ls /usr/local/bin`

echo $b | fmt -w $WIDTH

exit 0
