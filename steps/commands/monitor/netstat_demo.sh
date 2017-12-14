#! /bin/sh

# network connection status
netstat -tapnl | grep ****

netstat --rout

netstat --statistics --raw

netstat -at
netstat -antl # for tcp port
netstat -s # for port

echo "tcp connections"
netstat --tcp --numberic --listening --programins -n
