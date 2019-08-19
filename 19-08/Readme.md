# __Basic Shell Scripting__
# 1. Basic Prompts

```
read varname [more vars]
```
OR
```
read -p "prompt" varname [more vars]
```
>__PS__: last variable gets rest of the input

A sample shell script to demo the above.
```
read -p "enter your name: " first last
echo "First Name: $first"
echo "Last Name: $last"
```

# 2. Args
`code`|Description
---|---
`$0` | Name of the current shell script.
`$1-$9` | Positional parameters 1 through 9.
`$#` | The number of positional parameters.
`$*`| All positional parameters, "$*" is one string.
`$@`|All positional parameters, "$@" is a set of strings.
`$?`|Return status of most recently executed command.
`$$`|Process id of current process.


__Question:__ W.A.S. which displays all the command prompt arguments, given to a script.
>hint: `$*`.


__Answer:__  
```
echo $@
```
___

# 3. If, Else, Elif, fi
The syntax for if
```
if command
then
    statements
fi
```
The syntax for if else
```
if [condition]; then
    statements
else
    statements
fi
```
The syntax for elif
```
if [condition]; then
    statements
elif [condition]; then
    statements
else
    statements
fi
```
>What we learnt here was that `elif` does not require a `fi`, but all `if` requires a `fi`.

# 4. Basic Relational Op
`code`|Description|Comments
:---|:---|:---
`-gt`|greater than|
`-lt`|less than|
`-eq`|equal to|
`-ne`|not equal to|
`-ge`|greater than or equal to|
`-le`|less than or equal to|
`&&`| And|iff they're enclosed within `[[]]`
`||`| Or|iff they're enclosed within `[[]]`
# 5. File Perm
`code`|Description
:---|:---
`-d`|true if file is a directory.
`-f`|true if file is ordinary file.
`-r`|true if file is readable.
`-w`|true if file is writeable.
`-x`|true if file is executable.
`-s`|true if length of file is non-zero.

__Question:__ W.A.S. which displays the permissions of the file.

__Answer:__
>see above

# 6. Switch Case
```
case $var in
   pattern1)
      Statement(s) to be executed if pattern1 matches
      ;;
   pattern2)
      Statement(s) to be executed if pattern2 matches
      ;;
   pattern3)
      Statement(s) to be executed if pattern3 matches
      ;;
   *)
     Default condition to be executed
     ;;
esac
```
>The following example is an evaluation of the command line argument
```markdown
#!/bin/sh

option="${1}" 
#this will take the 1st positional parameter
#./filename.sh -f anotherfile.html
#becomes ./filename.sh -$1 $2
case ${option} in 
   -f) FILE="${2}" 
      echo "File name is $FILE"
      ;; 
   -d) DIR="${2}" 
      echo "Dir name is $DIR"
      ;; 
   *)  
      echo "`basename ${0}`:usage: [-f file] | [-d directory]" 
      exit 1 # Command to come out of the program with status 1
      ;; 
esac 
```