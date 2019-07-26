#! /bin/sh
#
# Example 1
echo 1;echo 2;echo 3

# Example 2: run command if the previous successed

echo 1 && echo 2 && echo 3

# Examle 3 : run a command if the previous ones fail

ls file &> /dev/null || echo "File not exist"

# run serveral commands in parallel, & and wait
process 1 &
process 2 &
process 3 &
process 4 &
wait

process 5 &
process 6 &
process 7 &
process 8 &
wait

# parallel shell package - npm
