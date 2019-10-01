clear

PS3="select entry or ^D: "

select var in $*
do
	echo "$REPLY=$var"
done

clear
