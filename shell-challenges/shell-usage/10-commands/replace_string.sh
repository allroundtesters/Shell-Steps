#! /bin/sh
#
# process one line at a time -n 1

find .! -path . -print0 | xargs -n 1 -0-I {} sh -c 'mv "{}" "{}.extra"'

# awk, xargs
