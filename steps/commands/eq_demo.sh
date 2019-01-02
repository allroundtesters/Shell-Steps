#! /bin/sh

A=TEST
B=TEST

if [ $A == $B ] ## == used for string
then
    echo "A equals B"
fi

# -eq used for number

if [ 1 -eq 2 ]
then
    echo "eq"
else
    echo "not eq"
fi
