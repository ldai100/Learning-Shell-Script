#library file for address book

#outputs everything in the file
list()
{
	cut -d":" -f 1,2,3 $name
	#cut was used to refresh my memory
}

search()
{
	echo "What would you like to search?\c"
	read search
	result=`grep -i "$search" $name | cut -d":" -f 1,2,3`
	#the cut is used only to refresh my memory
	if [ -z $result ]
	then
		echo "no such a entry."
	else
		echo "$result"
	fi	
}

add()
{
	echo "Enter name:\c"
	read info1
	echo "Enter phone number:\c"
	read info2
	echo "Enter e-mail address:\c"
	read info3
	echo "${info1}:${info2}:${info3}" >> $name
	echo "Entry entered!"
}

edit()
{
	echo "Which entry would you like to edit?"
	read input
	result=`grep -i "$input" $name`
	echo "$result"
	if [ -n $result ]
	then
		echo "above info will be edited."
		echo "Enter name:\c"
		read info1
		echo "Enter phone number:\c"
		read info2
		echo "Enter e-mail:\c"
		read info3
		sed -i '' "s/$result/${info1}:${info2}:${info3}/g" $name
		echo "entry edited!"
	else
		echo "No such a entry!"
	fi
}

remove()
{
	echo "Which entry would you like to delete?\c"
	read input
	result=`grep -i $input $name`
	echo $result
	if [ -n $result ]
	then
		echo "This entry will be deleted, are you sure?(Y/N)"
		read decision
		case $decision in
		Y|y)
			sed -i '' "/$result/d" $name
			echo "Entry deleted!"
			;;
		*)
			echo "Back to menu"
			;;
		esac
	else
		echo "No such a entry!"
	fi
}

