#! /bin/sh

find . | xargs grep 'string' -sl
find / -type f -print0 |xargs -0 grep -l "test"
grep -r "redeem reward" /home/patrick


# egrep

egrep "^\s+\"" checksum.sh

# ag/ack
#
# # remove dupliate lines

sort print_file.sh | uniq -u
cat print_file.sh  | cat | sort | uniq -u

# diff files
#
diff print_file.sh replace_string.sh 
