#! /bin/sh

# network connection status
netstat -tapn | grep ****

netstat --rout

netstat --statistics --raw

echo "tcp connections"
netstat --tcp --numberic --listening --programins -n
