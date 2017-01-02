echo "Enter a word:\c"
read word
case $word in
[aeiou]* | [AEIOU]*)
		echo "The word begings with a vowel."
		;;
[0-9]*)
		echo "The word begins with a digit."
		;;
*[0-9])
		echo "The word ends with a digits."
		;;
???)
		echo "You entered a three letter word."
		;;
*) 
#default case
		echo "I don't know what you have entered."
		;;
esac

