#! /bin/sh

echo "The Name of this scripts is $0"

echo "The total arguments are $#"

MIN_PARAMS=5

if [ $# -lt "$MIN_PARAMS" ]
then
    echo "parameters is less than ${MIN_PARAMS}"
fi

args=$#
lastarg=${!#}
echo ${lastarg}