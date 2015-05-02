#!/bin/bash

TIMEOUT=30
count=0

possibly_hanging_job & {
    while ((count < TIMEOUT )); do
        eval '[ ! -d "/proc/$!" ] && ((count = TIMEOUT))'
        ((count++))
        sleep 1
    done
    eval '[ -d "/proc/$!" ] && kill -15 $!'
}


