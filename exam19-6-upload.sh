#!/bin/bash

E_ARGERROR=85

if [ -z "$1" ]
then
    echo "Usage: `basename $0` Filename-to-upload"
    exit $E_ARGERROR
fi

Filename=`basename $1`

Server="ibiblio.org"
Directory="/incoming/Linux"

Password="your.e-mail.address"

ftp -n $Server <<End-Of-Session

user anonymous "$Password"

binary
bell
cd $Directory
put "$Filename.lsm"
put "$Filename.tar.gz"
bye
End-Of-Session

exit 0
