#!/bin/bash

String=23skidoo1

echo ${String:2:4}

echo | awk '
{ print substr("'"${String}"'",3,4)
}
'

echo "----"

echo | awk '
{ print index("'"${String}"'", "skid")
}
'

exit 0
