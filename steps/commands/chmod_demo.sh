#! /bin/sh
echo "chmod usage:"
echo "permisson:r:4,w:2,x:1"
echo "user: u:user,g:group,o:others"

# add execute permission to file owner
chmod u+x awk_demo.sh
# add read permission to owner and execute to group
chmod u+r,g+x awk_demo.sh

# revoke permission
chmod u-rx awk_demo.sh

# add to all
chmod a+x awk_demo.sh

## recursive
chmod -R 755 dir/
chmod -R 777 dir/

# regexp
chmod u+x *.py
