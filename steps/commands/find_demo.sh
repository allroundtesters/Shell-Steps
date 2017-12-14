#! /bin/sh
echo "Usage: find <path> -name <matching_pattern>"
find . -name '*py'

find . -type f -size +200

# f: file,d: dir,b: device file,c:input/output device,p:named pipe,l:link
# s: socket file

echo "find files which modified 60 days ago"
find . -mtime +60

echo "add exec command"

# find / -type f -name *.tar.gz -size +100M -exec rm -f {}