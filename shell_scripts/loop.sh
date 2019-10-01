COUNTER=20
until [ $COUNTER -lt 10 ]
do
	echo $COUNTER
	let COUNTER-=1
done
