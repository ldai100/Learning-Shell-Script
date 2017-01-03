#somehow this doens't work??
echo "Enter username:\c"
read name
line=`grep $name /etc/passwd`
echo $line
IFS=:
set $line
echo "Username:$1"
echo "User ID:$3"
echo "Group ID:$4"
echo "Comment Field:$5"
echo "Home Folder:$6"
echo "Default Shell:$7"

