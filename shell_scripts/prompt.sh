#write a script that checks if a file has rwx rights or not

read -p "Input a file for check: " filename

if test -r "$filename" && test -w "$filename" && test -x "$filename"
then
	echo "File "$filename" is readable, write-able and executable"
else
	echo "Its a no show for this one"
fi
