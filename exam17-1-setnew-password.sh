#!/bin/bash

ROOT_UID=0
E_WRONG_USER=65

E_NOSUCHUSER=70
SUCCESS=0

if [ "$UID" -ne "$ROOT_UID" ]
then
    echo; echo "Only root can run this script."; echo
    exit $E_WRONG_USER
else
    echo
    echo "You should know better than to run this script, root."
    echo "Even root users get the blues... "
    echo
fi

username=bozo
NEWPASSWORD=security_violation

grep -q "$username" /etc/passwd
if [ $? -ne $SUCCESS ]
then
    echo "User $username does not exist."
    echo "No password changed."
    exit $E_NOSUCHUSER
fi

echo "$NEWPASSWORD" | passwd --stdin "$username"

echo; echo "User $username's password changed!"

exit 0

