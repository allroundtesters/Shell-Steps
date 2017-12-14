#! /bin/sh

echo "sort the file content"
for i in {1..10};
do
    echo $((RANDOM/20))>>random;
done
cat random
echo "sort random "
sort random
echo "sort random by numberic"
sort -n random

echo "sort hosts file"
sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n /etc/hosts