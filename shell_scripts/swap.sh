echo "Input two numbers"

read x
read y

echo "x = $x and y = $y"

x=$(( $x+$y ))
y=$(( $x-$y ))
x=$(( $x-$y ))

echo "x = $x and y = $y"
