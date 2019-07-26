#! /bin/sh

SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]
then
    echo "Usage: `basename $0` rpm-file"
    exit $E_NOARGS
fi

{
    echo
    echo "Achive Description:"
    rpm -qpi $1 # 查询文件列表
    echo 
    echo "Achive Listing:"
    rpm -i --test $1 # 查询是否可以安装
    if [ "$?" -eq $SUCCESS ]
    then
      echo "$1 can be installed."
    else
      echo "$1 cannot be installed."
    fi    
} > "1.test"

echo "Results of rpm test in file $1.test"

exit 0