#! /bin/sh

echo " test usage: test [ express ]"
echo " test support: string/integer/file"

A=$1

if test  "$A" -eq 123 
then
    echo "yes, A is 123"
else
    echo "Sorry A is not 123"
fi

if [ "$A" -eq 123 ] 
then
    echo "yes, A is 123"
else
    echo "Sorry A is not 123"
fi