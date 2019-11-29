echo enter 3 numbers

read x
read y
read z

if [ $x -gt $y ]
then 
	if [ $x -gt $z ]
	then
		echo $x is greater
	else
		echo $z is greater
	fi
else
	if [ $y -gt $z ]
	then 
		echo $y is greater
	else
		echo $z is greater
	fi
fi
