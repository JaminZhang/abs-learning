#!/bin/bash

case $( arch ) in

    i386 ) echo "80386-based machine";;
    i486 ) echo "80486-based machine";;
    i586 ) echo "80586-based machine";;
    i686 ) echo "80686-based machine";;
    *    ) echo "Other type of machine";;
esac

exit 0
