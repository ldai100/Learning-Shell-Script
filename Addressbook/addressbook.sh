#!/bin/sh
#A exercise to make an address book program with shell script before my interview

. ./booklib.sh

show_menu()
{
	echo ""
	echo "Address Book Program"
	echo "Options:"
	echo "1. List all adress"
	echo "2. Search"
	echo "3. Add"
	echo "4. Edit"
	echo "5. Remove"
	echo "q. Quit"
	echo "Please choose a option:\c"
	read option
}


do_menu()
{
	case $option in
	1)
		list
		;;
	2)
		search
		;;
	3)
		add
		;;
	4)
		edit
		;;
	5)
		remove
		;;
	q)	
		exit
		;;
	*)
		echo "invalid input, try again:"
		;;
	esac
}

#####main script#####

name=$1
export name


if [ ! $# -eq 1 ]
then
	echo "You must enter exactly one argument as the address book name."
	exit
fi

if [ ! -f $1 ]
then
	touch $1
	echo "Such an file name is not found, a new address book is created."
	while :
	do
		show_menu
		do_menu
	done
elif [ ! -r $1 ]
then
	echo "unable to read the file."
	exit
elif [ ! -w $1 ]
then
	echo "unable to write the file."
	exit
else
	echo "address book found."
	while :
	do
		show_menu
		do_menu
	done
fi

