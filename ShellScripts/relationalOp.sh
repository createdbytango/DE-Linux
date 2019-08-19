#Write a script to display to find the larger of 2 numbers

echo "Enter 2 numbers"
read a
read b
if [ $a -gt $b ]
then
	echo "a ka bada hai"
else
	echo "b ka bada hai"
fi