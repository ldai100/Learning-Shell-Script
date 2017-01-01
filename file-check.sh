#-f file -d directory -c music -b images -r-w-x permission -s size
echo "Enter a file name:\c"
read name
if [ -d $name ]
then
	echo "File name found!"
else
	echo "no such a file name"
fi
