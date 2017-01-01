#takes a name and do things depends on user permission level
echo "Input a file name:\c"
read name
if [ -f $name ]
then
	if [ -w $name ]
	then
		echo "Type something to append.  To quit press ctrol+d"
		cat >> $name
	else
		echo "no permission to write to the file"
	fi
else
echo "no such a file exists"
fi
