
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
- sysctl: runing/stop/restart service

```sh
sysctl nginx status
```

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