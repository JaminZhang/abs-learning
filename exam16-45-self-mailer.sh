#!/bin/bash

adr=${1:-`whoami`}

cat $0 | mail -s "Script \"`basename $0`\" has mailed itself to you." "$adr"

# --------------------------------------------
#  Greetings from the self-mailing script.
#  A mischievous person has run this script,
#+ which has caused it to mail itself to you.
#  Apparently, some people have nothing better
#+ to do with their time.
# --------------------------------------------

echo "At `date`, script \"`basename $0`\" mailed to "$adr"."

exit 0
