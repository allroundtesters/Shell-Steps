#! /bin/sh

crontab -e
crontab -l
crontab -r
crontab -ir


# crontab template
# {mi} {h} {d-of-m} {month} {day of week } {full-path script}
# example:
# 1 0 * * * /root/bin/backup.sh