#! /bin/sh
KEY_WRODS=$1

ps -ef | grep $1| grep -v grep | awk '{print $2}' | xargs -I {} kill -9 {}