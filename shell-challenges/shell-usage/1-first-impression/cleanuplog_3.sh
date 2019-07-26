#! /bin/sh

LOG_DIR=/var/log
ROOT_UID=0 #UID 0 get the root priviledge
MSG_LINES=50
E_XCD=86 # exit code for changing directory
E_NOTROOT=87 # NOT ROOT ERROR CODE

if ["$UID" -ne "$ROOT_UID"]
then
    echo "Must be root to run this script"
    echo $E_NOTROOT
fi

if [ -n "$1"]
# testify saved first parameter 
then
    MSG_LINES=$1
else
    MSG_LINES=$MSG_LINES
fi

cd $LOG_DIR
# double check if in the log dir
if [`pwd` !="$LOG_DIR"]
then
    echo "Can't change to $LOG_DIR"
    echo $E_XCD
fi

tail -n $MSG_LINES messages > msg.temp
mv msg.tmp messages

cat /dev/null > wtmp
echo "Log files are cleaned up"

exit 0

### #! /bin/env bash
