#!/bin/bash

key=ETAOINSHRDLUBCFGJMQPVWZYXK

cat "$@" | tr "a-z" "A-Z" | tr "A-Z" "$key"

exit 0
