#! /bin/sh
echo "add debug: set -xv"
# set -xv

echo "for loop"
for i in {1..9};do
    echo $i
done

echo "for (( expr1; expr2 ; expr3))"
for (( i=1,j=10;i<10;i++,j=j+5))
do
    echo "Number $i:$j"
done

echo "read file content"
echo "------------------"
while read f1 f2 f3
do
    echo "$f1 $2 $3"
done < ./shell_demo.txt