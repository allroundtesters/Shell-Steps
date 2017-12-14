#! /bin/sh
echo "> redirect symbol"
cat redirect.sh > /dev/null

# cat redirect.sh 1> 2> &>
# redirect error to error.log
find . -name '*.sh' 2>error.log
# redirect std output to log.log
find . -name '*.sh' 1>log.log

echo "redirect input and output"
echo "input redirect"
cat < path_relative.sh