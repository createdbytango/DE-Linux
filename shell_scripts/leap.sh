echo enter year

read year

a=$(( $year % 4))
b=$(( $year%100))
c=$(( $year%400))

if [ $a -eq 0 -a $b -ne 100 -o  $c -eq 400 ]
then 
	echo $year is a leap year
else
	echo $year is not a leap year

fi
