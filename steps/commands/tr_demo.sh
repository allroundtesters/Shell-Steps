#! /bin/sh
echo "tr means translate"

echo "hello world" | tr a-z A-z
# delete characters in "world"
echo "hello world" | tr -d world
#replace charator
echo "hello world" |tr -s e A

echo "please use sed to delete/replace"