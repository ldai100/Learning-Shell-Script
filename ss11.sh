#tput-in action
tput clear
echo "Total number of rows on screen=\c"
tput lines
echo "Total number of columns on screen=\c"
tput cols
tput cup 15 20
tput bold
echo "testing boldness"
tput sgr0
