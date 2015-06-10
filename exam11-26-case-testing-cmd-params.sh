#!/bin/bash

case "$1" in
    "" ) echo "Usages: ${0##*/} <filename>"; exit $E_PARAM;;

    -* ) FILENAME=./$1;;

    *  ) FILENAME=$1;;
esac

while [ $# -gt 0 ]; do
    case "$1" in
        -d|--debug )
                    DEBUG=1
                    ;;
        -c|--conf  )
                    CONFILE="$2"
                    shift
                    if [ ! -f $CONFFILE ];
                        echo "Error: Supplied file doesn't exist!"
                        exit $E_CONFFILE
                    fi
                    ;;
    esac
done

