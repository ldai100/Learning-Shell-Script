#for loop syntax practice
for i in *
do
	if [ -f $i -o -d $i ]
	then
		echo $i
	fi
done
