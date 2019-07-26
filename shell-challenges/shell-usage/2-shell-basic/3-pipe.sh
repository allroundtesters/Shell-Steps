#! /bin/sh

cat temp.txt | sed -e '/#/d' | tr -d '\n'