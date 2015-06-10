#!/bin/bash

ARGCOUNT=1
E_WRONGARGS=70
E_FILE_NOT_EXIST=71
E_CHANGED_MIND=72

if [ $# -ne "$ARGCOUNT" ]
then
    echo "Usage: `basename $0` filename"
    exit $E_WRONGARGS
fi

if [ ! -e "$1" ]
then
    echo "File \""$1"\" dose not exist."
    exit $E_FILE_NOT_EXIST
fi

inum=`ls -i | grep "$1" | awk '{print $1}'`
echo; echo -n "Are you absolutely sure you want to delete \"$1\" (y/n)? "
read answer
case "$answer" in
    [nN])   echo "Changed your mind, hub?"
            exit $E_CHANGED_MIND
            ;;
    *)      echo "Deleting file \"$1\".";;
esac

find . -inum $inum -exec rm {} \;
echo "File "\"$1"\" deleted!"

exit 0
