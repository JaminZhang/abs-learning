#!/bin/bash

INIT_TAB_AWK=""

count_case=0
FILE_PARSE=$1

E_PARAMERR=85

usage()
{
    echo "Usage: letter-count.sh file letters" 2>&1
    exit $E_PARAMERR
}

if [ ! -f "$1" ] ; then
    echo "$1: No such file." 2>&1
    usage
fi

if [ -z "$2" ] ; then
    echo "$2: No letters specified." 2>&1
    usage
fi

shift
for letter in `echo $@`
do
    INIT_TAB_AWK="$INIT_TAB_AWK tab_search[${count_case}] = \
    \"$letter\"; final_tab[${count_case}] = 0; " 
    count_case=`expr $count_case + 1`
done

cat $FILE_PARSE |
awk \
"BEGIN { $INIT_TAB_AWK } \
{ split(\$0, tab, \"\"); \
for (chara in tab) \
{ for (chara2 in tab_search) \
{ if (tab_search[chara2] == tab[chara]) { final_tab[chara2]++ } } } } \
END { for (chara in final_tab) \
{ print tab_search[chara] \" => \" final_tab[chara] } }"

exit $?
