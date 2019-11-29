echo enter two numbers

read x
read y

if [ $x -gt $y ] 
then 
	echo $x is greater
else 
	echo $y is greater
fi
