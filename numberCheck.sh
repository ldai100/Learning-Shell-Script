echo "Enter a number between 10 and 20:\c"
read num
if [ $num -lt 10 ]
then
	echo "it's less than 10"
elif [ $num -gt 20 ]
then
	echo "it's greater than 20"
else
	echo "it's between 10 and 20"
fi
