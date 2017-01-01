#practice on arguments using $1 and $2 these are arguments
echo "provide a file name"
read name
mv $1 $name
cat $name
