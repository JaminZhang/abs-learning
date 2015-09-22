#!/bin/bash

draw_box(){
#=============#
HORZ="-"
VERT="|"
CORNER_CHAR="+"

MINARGS=4
E_BADARGS=65
#=============#

if [ $# -lt "$MINARGS" ]; then
    exit $E_BADARGS
fi

if echo $@ | tr -d [:blank:] | tr -d [:digit:] | grep . &> /dev/null; then
       exit $E_BADARGS
fi

BOX_HEIGHT=`expr $3 - 1`
BOX_WIDTH=`expr $4 - 1`
T_ROWS=`tput lines`
T_COLS=`tput cols`

if [ $1 -lt 1 ] || [ $1 -gt $T_ROWS ]; then
    exit $E_BADARGS
fi

if [ $2 -lt 1 ] || [ $2 -gt $T_COLS ]; then
    exit $E_BADARGS
fi

if [ `expr $1 + $BOX_HEIGHT + 1` -gt $T_ROWS ]; then
    exit $E_BADARGS
fi

if [ `expr $2 + $BOX_WIDTH + 1` -gt $T_COLS ]; then
    exit $E_BADARGS
fi

if [ $3 -lt 1 ] || [ $4 -lt 1 ]; then
    exit $E_BADARGS
fi

plot_char(){
    echo -e "\E[${1};${2}H"$3
}

echo -ne "\E[3${5}m"

count=1
for (( r=$1; count<=$BOX_HEIGHT; r++)); do
    plot_char $r $2 $VERT
    let count=count+1
done

count=1
c=`expr $2 + $BOX_WIDTH`
for (( r=$1; count<=$BOX_HEIGHT; r++)); do
    plot_char $r $c $VERT
    let count=count+1
done

count=1
for (( c=$2; count<=$BOX_WIDTH; c++)); do
    plot_char $1 $c $HORZ
    let count=count+1
done

count=1
r=`expr $1 + $BOX_HEIGHT`
for (( c=$2; count<=$BOX_WIDTH; c++)); do
    plot_char $r $c $HORZ
    let count=count+1
done

plot_char $1 $2 $CORNER_CHAR
plot_char $1 `expr $2 + $BOX_WIDTH` $CORNER_CHAR
plot_char `expr $1 + $BOX_HEIGHT` $2 $CORNER_CHAR
plot_char `expr $1 + $BOX_HEIGHT` `expr $2 + $BOX_WIDTH` $CORNER_CHAR

echo -ne "\E[0m"

P_ROWS=`expr $T_ROWS - 1`

echo -e "\E[${P_ROWS};1H"
}

clear
R=2
C=3
H=10
W=45
col=1
draw_box $R $C $H $W $col

exit 0

