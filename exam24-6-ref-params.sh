#!/bin/bash

ITERATIONS=3
icount=1

my_read () {
    local local_var

     echo -n "Enter a value "
     eval 'echo -n "[$'$1'] "'

     read local_var
     [ -n "$local_var" ] && eval $1=\$local_var

 }

 echo

 while [ "$icount" -le "$ITERATIONS" ]
 do
     my_read var
     echo "Entry #$icount = $var"
     let "icount += 1"
     echo
 done

 exit 0
