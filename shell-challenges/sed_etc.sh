#! /bin/sh
echo "origin"
echo "a\na\na\na"
echo "match 1"
echo "a\na\na\na"|sed -n '1,/a/p' 
echo "march 2"
echo "a\na\na\na"|sed -n '0,/a/p' #