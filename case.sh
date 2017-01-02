echo "Enter a character:\c"
read var
case $var in
[a-z])
	echo "You entered a lower case alphabet."
	;;
[A-Z])
	echo "You entered a upper case alphabet."
	;;
[0-9])
	echo "You entered a digit."
	;;
?)
	echo "a special symbol."
	;;
*)
	echo "more than one characters."
	;;
esac
