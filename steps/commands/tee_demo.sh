#! /bin/sh

echo "read from std input and then \
write to std output and files"

ls | tee file_list.txt
echo "hello world" | tee helloworld.txt