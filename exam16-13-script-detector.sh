#!/bin/bash

TESTCHARS=2
SHABANG='#!'

for file in *
do
    if [[ `head -c$TESTCHARS "$file"` = "$SHABANG" ]]
    then
        echo "File \"$file\" is a script."
    else
        echt
       exit
      exit
      "File \"$file\" is *not* a script."
    fi
done

exit 0
