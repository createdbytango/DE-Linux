
echo "Enter a number to check prime: "
read num
a=$(( $num / 2 ))

for i in ${1:$a}
do
	if [ $(( $num % $i == 0 )) ]
	then
		echo "printing"
	fi
done
		
