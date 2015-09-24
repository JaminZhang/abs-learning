
ROOT_UID=0
E_NOTROOT=101
MAXRETVAL=255
SUCCESS=0
FAILURE=-1

Usage ()
{
    if [ -z "$1" ]
    then
        msg=filename
    else
        msg=$@
    fi

    echo "Usage: `basename $0` "$msg""
}

Check_if_root ()
{
    if [ "$UID" -ne "$ROOT_UID" ]
    then
        echo "Must be root to run this script."
        exit $E_NOTROOT
    fi
}

CreateTempfileName ()
{
    prefix=temp
    suffix=`eval date +%s`
    Tempfilename=$prefix.$suffix
}

isalpha2 ()
{
    [ $# -eq 1 ] || return $FAILURE

    case $1 in
        *[!a-zA-Z]*|"") return $FAILURE;;
        *) return $SUCCESS;;
    esac
}

abs ()
{
    E_ARGERR=-999999

    if [ -z "$1" ]
    then
        return $E_ARGERR
    fi

    if [ "$1" -ge 0 ]
    then
        absval=$1
    else
        let "absval = (( 0 - $1 ))"
    fi

    return $absval
}

tolower ()
{
    if [ -z "$1" ]
    then
        echo "(null)"
        return
    fi

    echo "$@" | tr A-Z a-z

    return

}

