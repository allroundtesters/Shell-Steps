#! /bin/sh

echo "Hello World!"

hello_str="Hello World!"
echo $hello_str
echo ${hello_str}
echo "${hello_str}"

# space_in_string=1 2 3 # error
space_in_string="1 2 3"
echo $space_in_string

unset space_in_string

echo $space_in_string

if [ -z $space_in_string ]
then
    echo "'\$space_in_string is null'"
else
    echo "${space_in_string}"
fi

# vairable add
sum=0
let "sum+=5"
let sum+=90
echo ${sum}

PWD=`pwd`
R=$(cat shell_demo.txt)
arch=$(uname -m)
echo $R
echo $arch

a=2334
let a+=1
echo "a=$a"
b=${a/33/BB}
echo $b