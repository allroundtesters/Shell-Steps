#! /bin/sh

FIRST="SECOND"
SECOND="FIRST"

# Actually it is bad substitution,doesn't work
echo "${$FIRST}"