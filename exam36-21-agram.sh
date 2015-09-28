#!/bin/bash

LETTERSET=etaoinshrdlu
FILTER='.......'

anagram "$LETTERSET" |
grep "$FILTER" |
grep '^is' |
grep -v 's$' |
grep -v 'ed$'

exit 0 
