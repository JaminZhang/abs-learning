#!/bin/bash

Rows=5
Columns=5

declare -a alpha

load_alpha ()
{
    local rc=0
    local index

    for i in A B C D E F G H I J K L M N O P Q R S T U V W X Y
    do
        local row=`expr $rc / $Columns`
        local column=`expr $rc % $Rows`
        let "index = $row * $Rows + $column"
        alpha[$index]=$i
        let "rc += 1"
    done
}
    print_alpha ()
    {
        local row=0
        local index

        echo

        while [ "$row" -lt "$Rows" ]
        do
            local column=0
            echo -n "       "
            while [ "$column" -lt "$Columns" ]
            do
                let "index = $row * $Rows + $column"
                echo -n "${alpha[index]} "
                let "column += 1"
            done

            let "row += 1"
            echo

        done

        echo
    }

filter ()
{
    echo -n "  "
    if [[ "$1" -ge 0 &&  "$1" -lt "$Rows" && "$2" -ge 0 && "$2" -lt "$Columns" ]]
    then
        let "index = $1 * $Rows + $2"
        echo -n " ${alpha[index]}"
    fi
}

rotate ()
{
    local row
    local column

    for (( row = Rows; row > -Rows; row-- ))
    do
        for (( column = 0; column < Columns; column++ ))
        do
             if [ "$row" -ge 0 ]
             then
                 let "t1 = $column - $row"
                 let "t2 = $column"
             else
                 let "t1 = $column"
                 let "t2 = $column + $row"
             fi

             filter $t1 $t2

         done

         echo; echo
     done

 }

load_alpha
print_alpha
rotate

exit 0

