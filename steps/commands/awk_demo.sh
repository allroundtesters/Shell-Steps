#! /bin/sh

echo "awk usage:"
echo "awk '/search_pattern/ {Action} /search_pattern_a/ {action}' file"

awk '{print;}' demo.txt
awk '{print $2,$3,$NF}' demo.txt

awk 'BEGIN {print "begin======"} {print $2 $NF} END {print "It is the end ----"}' log.log

echo "field usage......"
awk '$1>3' log.log

echo "[[ ]] for matching"
awk '$NF ~ /[rR][abcdsed]/' log.log

awk 'BEGIN {count=0} \
 $NF ~/red/ {count++;} \
END {print "Number of files start with red:",count;}' log.log