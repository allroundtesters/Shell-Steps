#! /bin/sh

list_array=(test1 test2 teste)

# echo 

echo $list_array # output:test1,test2,teste

cat temp.{txt,backup}

# combination
echo {file1,file2}\:{\ A,"B",' C'} 
# output file1: A file1:B file1: C file2: A file2:B file2: C

## extension
echo {a..z}
# output:a b c d e f g h i j k l m n o p q r s t u v w x y z
echo {A..Z} {a..z} {0..9} +/=
# what's the output? A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r
# s t u v w x y z 0 1 2 3 4 5 6 7 8 9 +/=

# loop array 
for item in {A..Z} {a..z} {0..9}
do
  echo $item
done # add &, it will run in backend

for item in ${list_array[@]}
do
    echo ${item}
done