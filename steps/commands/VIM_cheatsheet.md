# VIm CheatSheet

## Line Movement

|Key|direction|
|---|---------|
|k|up|
|j|down|
|h|left|
|i|right|
|10k|up to 10 lines|
|5h|move right 5 words|
|0|jump to beginnign of a line|
|^|first word of a line|
|$|end of a line|
|g_|last word of a line|

## Screen Movement

|Key|direction|
|---|---------|
|H|Head Line of current screen|
|M|Middle of Current Screen|
|L|Last line of current Screen|
|Ctrl+f|screen forward|
|Ctrl+b|screen backward|
|Ctrl+d|half screen forward|
|Ctrl+u|half screen backward|

## Special Movement

|Key|direction|
|---|---------|
|N%|N% of file|
|NG|GO to N Line|
|gg|head of a file|
|G|end of a file|

## Movement between words

|Key|direction|
|---|---------|
|e| end of a word|
|E|end of a big word|
|b|previous word|
|B|previous big word|
|w|nex word|
|W|next big word|

## Paragraph and Search

|Key|direction|
|---|---------|
|{|head of paragraph|
|}|end of a big word|
|/text|search after the cursor|
|?text|search before the cursor|
|*|move cursor to next word position|
|#|move cursor to previous word position|
|%|move around ()|

## Command

```sh
vim +10 /etc/passwd #open file and go to line 10
vim +/install README # open file and go to first install
vim +?bug README # open file and go to last bug
```