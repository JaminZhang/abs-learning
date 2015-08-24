#!/bin/bash

RECURSIONS=9
r_count=0

recurse ()
{
    var="$1"

     while [ "$var" -ge 0 ]
     do
         echo "Recursion count = "$r_count"  +-+  \$var = "$var""
         (( var-- )); (( r_count++ ))
         recurse "$var"
     done
 }

 recurse $RECURSIONS

 exit $?
