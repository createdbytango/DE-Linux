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

__C style loop__
```bash
for ((i = 1; i<=10; i++)); do
    echo $i
done
```
__Loops for ranges__
```bash
for i in {1..10}; do
    echo $i
done

for i in {A..Z}; do
    echo $i
done
```

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
read -p "Enter a number: " number
let i=2
let flag=0
while [ $i -lt $number ]
do
        let rem=`expr $number % $i`
        if [ $rem -eq 0 ]
        then
                let flag=1
                break
        fi
        let i+=1
done
if [ $flag -eq 0 ]
then
        echo Prime
else
        echo Not Prime
fi
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
# 3. Shell Functions
* must be defined before they can be referenced.
* Usually placed at the beginning of the script.
```bash
function-name () {
    statements
}
```
>:pushpin: Define the fucntion first before calling it.

* You can use ```return``` to break out of funtion

```bash
# Define Function
sayHello() {
    echo "Hello"
    
    # Return returns an exit status number between 0 - 255
    return
}

# Calling funtion
sayHello
```

__Q:__ Write a function to add two numbers.

* To recieve parameters in funtion use $1-$9.
* To return a value from a funtion use echo.
```bash
getSum() {
    num1=$1
    num2=$2
    echo $((num1+num2))
}

# To pass arguments to funtion write argument list after funtion call.
read -p "Enter 2 numbers: " a b
sum=$(getSum a b)
echo "$a + $b = $sum"
```
