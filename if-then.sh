#control flow lesson
echo "give me a source and a target:"
read source target
if mv $source $target
then
echo "sucess!"
else 
echo "failed..."
fi
