echo "Enter a file name:\c"
read name
if [ -z "$name" ]
then
	exit
fi

terminal=`tty`

exec < $name

count=1

while read line
do
	echo $count.$line
	count=`expr $count + 1`
done

exec < $terminal
