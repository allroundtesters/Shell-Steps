#! /bin/sh

export CDPATH=.:~:/var:/etc

cd ~
CURRENT=`pwd`
echo "display current path"
echo $CURRENT

# for i in {1..4};
# do 
#     mkdir dir_$i;
#     rm -rf dir_$i
# done
pushd .
popd 
dirs
shopt -s XXX
shopt -u XXX