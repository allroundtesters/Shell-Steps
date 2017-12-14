#! /bin/sh

# ls open files
lsof | head
lsof | wc -l
lsof -u <user_name>
lsof <program_name>