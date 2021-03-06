
# Tester's Commands/Shell Notes

[shell-steps](http://gitpitch.com/allroundtesters/Shell-Steps)

---

@title[Tester's Top Commands-1]
## Tester's Top Commands-1

- tail: used for learning the log info

```sh
tail -f -n 1000 application.log
```

- ssh: used to connect to server

```sh
ssh root@host
```

- find: find files

```sh
find . -name *.py 
```

- ps: find process information

```sh
ps aux | grep java
```

--- 

@title[Tester's Top Commands-2]
## Tester's Top Commands-2

- xargs: shell scripts

```sh
ps aux | grep java | grep -v 'grep' | xargs kill -9
```

- netstat: learning the network status

```sh
netstat -antlp | grep 8080
```

- redirect:  nohup running application

```sh
nohup java -jar application.jar > /dev/null & 
```

- grep: find some keywords

```sh
grep Exception error.log
```

---

@title[Tester's commands]
## Tester's Commands

- tee: write to new std output and a file

```sh
man tee | tee man_tee.txt
```

if you want to read the manual of tee, then you get it in man_tee.txt.

---

- systemctl: runing/stop/restart service

```sh
systemctl nginx status
```
---

- tar
- head
- sort
- uniq
- tr
- rsync

```sh
rsync -av source target
```

---

@title[Tester's Monitoring Commands]
## Tester's Monitoring Commands

- df/du
- free
- lsof

```sh
lsof | wc -l
lsof -u <user>
lsof -i udp:53
lsof -i tcp:8080
```

- netstat

```sh
netstat -antp | grep 3306 | grep mysql # mysql conenctions
```

+++

- sar

```sh
sar -u
```

- top/htop
- vmstat

```sh
vmstat 1 100
```

- iostat

---

@title[Tester's advanced Commands]
## Tester's advanced Commands

- awk
- sed
- crontab

```sh
crontab -e
```

---

@title[Sed Usage]
## sed usage

```sh

```

@title[Vim Cheatsheet-Line Movement]
## Vim Cheatsheet-Line Movement

|Key|direction|
|---|---------|
|k|up|
|j|down|
|h|left|
|i|right|
|10k|up to 10 lines|
|5h|move right 5 words|

+++ 

|Key|direction|
|---|---------|
|0|jump to beginnign of a line|
|^|first word of a line|
|$|end of a line|
|g_|last word of a line|

---
@title[Vim Cheatsheet-Screen Movement]
## Vim Cheatsheet-Screen Movement

|Key|direction|
|---|---------|
|H|Head Line of current screen|
|M|Middle of Current Screen|
|L|Last line of current Screen|
|Ctrl+f|screen forward|
|Ctrl+b|screen backward|
+++
|Key|direction|
|---|---------|
|Ctrl+d|half screen forward|
|Ctrl+u|half screen backward|

---

@title[Vim Cheatsheet-Special Movement]
## Vim Cheatsheet-Special Movement

|Key|direction|
|---|---------|
|N%|N% of file|
|NG|GO to N Line|
|gg|head of a file|
|G|end of a file|

---

@title[Vim Cheatsheet-Movement between words]
## Vim Cheatsheet-Movement between words

|Key|direction|
|---|---------|
|e| end of a word|
|E|end of a big word|
|b|previous word|
|B|previous big word|
+++
|Key|direction|
|---|---------|
|w|nex word|
|W|next big word|

---

@title[Vim Cheatsheet-Paragraph and Search]
## Vim Cheatsheet-Paragraph and Search

|Key|direction|
|---|---------|
|{|head of paragraph|
|}|end of a big word|
|/text|search after the cursor|
|?text|search before the cursor|
+++
|Key|direction|
|---|---------|
|*|move cursor to next word position|
|#|move cursor to previous word position|
|%|move around ()|

---

@title[Vim Cheatsheet-Command]
## Vim Cheatsheet-Command

```sh
vim +10 /etc/passwd #open file and go to line 10
vim +/install README # open file and go to first install
vim +?bug README # open file and go to last bug
```

---

@title[Shell-Assignment]
## Shell-assignment

Assign Value

```sh
ARG1=Tester
echo $ARG1
CURRENT_PATH=`pwd`
echo ${CURRENT_PATH}
```
---
@title[Shell For-loop]
## Shell Loop

- For Loop

```sh
echo "for loop"
for i in {1..9};do
    echo $i
done

for var in "service controller domain rest"
do 
    echo $var\n
done

```

- do-while

```sh
while read f1 f2 f3
do
    echo "$f1 $2 $3"
done < ./shell_demo.txt
```

--- 
## Shell If-else

```sh
if [ ! -n "$1" ]
then
   echo "script need one arg"
   exit 1
fi
echo !
echo $1
```

---
## Shell Process Return Value 

return value is between 0-255 in linux,

- 0: process exit status is true, that means everything is all right
- not 0: process exit status is false, something goes wrong

- 0 example:

```sh
touch new.file
echo $? #print 0. touch file successfully
```
- 1 example:

```sh
ls noexist.file  ## list a file which doesn't exist
echo $? # 1 returned, means something goes wrong
```
---

## Shell Test Expression

test expression or [ expression ]

```sh
if test  "$A" -eq 123 
then
    echo "yes, A is 123"
else
    echo "Sorry A is not 123"
fi
```

```sh
if [ "$A" -eq 123 ] 
then
    echo "yes, A is 123"
else
    echo "Sorry A is not 123"
fi
```

+++

- AND: &&(-a) 
- OR: ||

```sh
[ -d "$file" && -x "$file"]
```

---

## FD: File Descriptor

File Descriptor: linux process open three files as default, the following three:

- 0: standard input(STDIN), keyboard
- 1: standard output(STDOUT): monitor
- 2: standard Error output (STDERR): monitor

--- 

## Input/Output redirection

- ```<``` as input redirection

```sh
cat < README.md
```

- ```>``` as output redirection

```sh
ls nosuch.file 2> /dev/nulll
```

- stdout and stderr combined by ```2>&1```

```sh
cat nosuch.file >/dev/null 2>&1
```
- append by ```>>```

---

## Shell Function

Define a shell function:

```sh
function echoIt(){
 echo "this is echo it function"
}
```

Invoke a shell function:

```sh
echoIt
```

---

## Shell For args

- $# the total amount of argument
- $1 reperent the first argument
- #? reperesent last return value
- $0 the file name 
- if [ -z $1 ] to judge if the first parameter exists

---