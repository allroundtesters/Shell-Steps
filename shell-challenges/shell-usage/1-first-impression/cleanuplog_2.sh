#! /bin/sh

# avoiding hard code
LOG_DIR = /var/log
cd $LOG_DIR

cat /dev/null > message
cat /dev/null >wtmp

echo "Logs cleaned up"
exit(0)