#! /bin/sh

# ls open files
lsof | head
lsof | wc -l
lsof -u <user_name>
lsof <program_name>

lsof -i apache 
lsof -i udp:53
lsof -i tcp:8080
lsof -i:smtp
lsof -p <pid>
lsof -N
lsof -U
lsof -g <groupid>