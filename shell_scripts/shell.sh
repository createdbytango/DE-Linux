if [ $# -eq 0 ]
then
        echo "Please enter one or more files as argument"
exit
fi

echo "Enter the word to be searched in file"

read word
for file
do
        sed "/$word of" $file | tee tmp;
        mv tmp $file
done
