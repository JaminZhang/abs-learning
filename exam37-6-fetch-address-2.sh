#!/bin/bash
# fetch_address-2.sh
# A more elaborate version of fetch_address.sh.

SUCCESS=0
E_DB=99    # Error code for missing entry.

declare -A address
#       -A option declares associative array.


store_address ()
{
    address[$1]="$2"
    return $?
}

fetch_address ()
{
    if [[ -z "${address[$1]}" ]]
    then
        echo "$1's address is not in database."
        return $E_DB
    fi

    echo "$1's address is ${address[$1]}."
    return $?
}

store_address "Lucas Fayne" "414 W. 13th Ave., Baltimore, MD 21236"
store_address "Arvid Boyce" "202 E. 3rd St., New York, NY 10009"
store_address "Velma Winston" "1854 Vermont Ave, Los Angeles, CA 90023"


fetch_address "Lucas Fayne"
fetch_address "Velma Winston"
fetch_address "Arvid Boyce"
fetch_address "Bozo Bozeman"

exit $?
