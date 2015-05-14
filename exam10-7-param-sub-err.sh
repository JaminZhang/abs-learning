#!/bin/bash

: ${HOSTNAME?} ${USER?} ${HOME?} ${MAIL?}
echo
echo "Name of the machine is $HOSTNAME."
echo "You are $USER."
echo "Your home directory is $HOME."
echo "Your mail INBOX is located in $MAIL."
echo
echo "If you are reading this message,"
echo "critical environmental variables have been set."
echo
echo

ThisVariable=Value-of-ThisVariable
: ${ThisVariable?}
echo "Value of ThisVariable is $ThisVariable."

echo; echo

: ${ZZXy23AB?"ZZXy23AB has not been set."}

echo "You will not see this message, because script already terminated."

HERE=0
exit $HERE
