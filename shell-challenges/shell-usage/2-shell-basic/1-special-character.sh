#! /bin/sh

echo "# Special Charator in Shell"
echo "## Comment start with '#'"

# comment in pipe

echo "## The # here doesn\'t begin a comment"
echo "\`\`\`sh \n echo The # here doesn't begin a commit.\n echo The \# here doesn\'t begin a commit.\`\`\`"

# echo ${PATH#*:} # not comment 
# echo $((2#101))
# echo $((8#101))

# ; separat two commands

filename=$0
echo "## ; for continue"
echo """\`\`\`sh \n echo hello;echo there;echo ';'\n\`\`\`"""

# if [ -x "$filename" ];then
#     echo "File $filename exists."
# else
#    echo "File is not existing"
# fi

echo "## ) is used for case statement"
case "$filename" in 
    abc) echo "it is abc";;
    de) echo "it is de" ;;
esac


echo "##, as or statement"
echo "\`\`\`sh
for fille in /{,usr/}bin/*java
do
    if [ -z "$file" ]
    then
        echo $file
    fi
done
\`\`\`"

for fille in /{,usr/}bin/*java
do
    if [ -z "$file" ]
    then
        echo $file
    fi
done

# for ／
echo "## / as translation "
echo "\`\`\`sh \n echo \"\"test\"\"\n echo \'\"test\"\n\`\`\`"


echo "## : is for true(0)"

echo "\`\`\`sh
:
echo "then echo $? return 0"
echo  $?
\`\`\`"

echo "## $ or ${} for variable substitution"
echo "\`\`\`sh \n 
variable=0
echo $variable
echo ${variable}
\`\`\`"

echo "## \$? for returned status"
echo "\`\`\`sh 
variable=0
echo $? # should be 0
\`\`\`"

echo "## \$\$ for PID"
echo "\`\`\`sh 
echo \$\$
ps aux | grep \$0
\`\`\`"

echo "## () for command group but in different process"
echo "\`\`\`sh 
a=123
( a=321; )
echo "a=\$a" # \$a=123
\`\`\`"


echo "## () for array initialization" 
echo "\`\`\`sh 
array=(e1 e2 e3)
for item in ${array[@]}
do
    echo $item
done
\`\`\`"
