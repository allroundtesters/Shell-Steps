#! /bin/sh
echo "sample codes for return value"

touch new.file
echo $?

ls no.file
echo $?

echo $?

rm new.file