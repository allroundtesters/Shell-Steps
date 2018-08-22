#! /bin/sh

$FOLDER_NAME=$1
du $FOLDER_NAME -d 1 -h -m
du $FOLDER_NAME -d 1 -h -m | sort -rn
