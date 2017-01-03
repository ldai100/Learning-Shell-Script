#how sleep works in shell script
echo "Enter a sentence:\c"
read str
for word in $str
do
	echo $word 
	sleep 1
done
