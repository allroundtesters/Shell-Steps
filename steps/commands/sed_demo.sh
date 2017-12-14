#! /bin/sh

echo "sed usage: sed 's/REGEXP/REPLACEMENT/FLAGS' <file>"
cat join-1.txt

sed 's/u/U/gw sed.txt' join-1.txt
cat join-1.txt