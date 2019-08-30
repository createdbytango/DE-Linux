read -p "Enter 2 numbers : " a b
let a=`expr $a + $b`
let b=`expr $a - $b`
let a=`expr $a - $b`
echo "a = $a, b = $b"