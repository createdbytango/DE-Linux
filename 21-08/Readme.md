# __Loops__
# 1. Until Loop
```bash
#!/bin/bash
COUNTER=20
until [ $COUNTER -lt 10 ]
do
    echo $COUNTER
    let COUNTER-=1
done
```
# 2. For Loop
```bash
for variable in argument-list
do
    commands
done
```
__Q:__ W.A.S. to display all the command line args.

__A:__
```bash
for arg in $@
do 
    echo $arg
done
```
#
_Simplest form  of for loop that will iterate over all command line arguments:_
```bash
for parm
do
    echo $parm
done
```
> :pushpin: what we learn here is that `$@` or `$*` wasn't necessary.

# 3. Select Loop ?

* Constructs a somple menu from word list.
* Allows user to enter a number instead of a word.
* User enters sequence number coreesponding to the word.

```bash
select var in alpha beta gamma
do
    echo $var
done
```
>P.S.: Use `Ctrl+D` to exit. 

>:pushpin: `Ctrl+D` is E.O.F.

```bash
#!/bin/bash
echo "script to make files private."
echo "Select file to protect: "
select FILENAME in *
do
    echo "You picked $FILENAME ($REPLY)"
    chmod  go-rwx "$FILENAME"
    echo "$FILENAME is now private."
done
```
# __MISC.__
# 1. The BREAK command
```bash
while [command]
do
    cmd-1
    break
    cmd-n
done
echo "done"
```
__Q:__ W.A.S. to check whether the number is a prime number or not.

__A:__
```bash
```
# 2. The CONTINUE command
```bash
while [command]
do
    cmd-1
    continue
    cmd-n
done
echo "done"
```
__Q:__ What will be the output of this ?
```bash
for index in 1 2 3 4 5 6 7 8 9 10
do
    if [ $index -le 3 ]; then
        echo "continue"
        continue
    fi
    echo $index
    if [ $index -ge 8 ]; then
        echo "break"
        break
    fi
done
```
__A:__