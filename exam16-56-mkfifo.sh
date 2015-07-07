#!/bin/bash

mkfifo pipe1
mkfifo pipe2


(cut -d' ' -f1 | tr "a-z" "A-Z") >pipe2 <pipe1 &

ls -l | tr -s ' ' | cut -d' ' -f3,9- | tee pipe1 |
cut -d' ' -f2 | paste - pipe2

rm -f pipe1
rm -f pipe2

exit $?
