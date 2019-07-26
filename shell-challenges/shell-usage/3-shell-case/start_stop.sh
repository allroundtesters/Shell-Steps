#! /bin/sh

ACTION=$1

if test -z $ACTION ; then 
    echo "ACTION is NULL"
    echo "ACTION set to default"
    ACTION='DEFAULT'
fi

case $ACTION in 
START|BEGIN|start|begin)
  echo "start service!!"
  ;;
stop|STOP)
   echo "STOP SERVICE!"
   ;;
default|DEFAULT)
   echo "IT IS DEFAULT ACTION"
   ;;
esac   


