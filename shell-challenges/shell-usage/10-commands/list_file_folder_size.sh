#! /bin/sh
#

ls -A | awk '{system("du -sm \""$0\"")}' |sort -nr | head

ls -Al | egrep '^d' \
       | awk '{printf $9;for (x=10;x<=NF;x) {printf " "$x;}};print ""}' \
       | awk '{system("du -sh \""$0"\"")}'
