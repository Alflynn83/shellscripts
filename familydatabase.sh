#!/bin/bash
##This is making a question with options and adding fields. The bash script is writing data as it is being entered.
while true 
do 
clear
echo -e "What would you like to do?
Add an entry (a)
Search for an entry (s)
Quit (q)
Enter your choice (a/s/q)-->\c"
read ANSWER
##This read ANSWER will create an ANSWER variable that will do the case commands.
case $ANSWER in 
a|A ) echo -e "Name of the family member --> \c"
	read NAME
	echo -e "Family member's relation to you -->\c"
	read RELATION
	echo -e "Family member's telephone number --> \c"
	read PHONE
	echo "$NAME\t$RELATION\t$PHONE" >> database
	;;
s|S ) echo "What word would you like to look for? --> \c"
	read WORD
	grep "$WORD" database
	sleep 4
	;;
q|Q ) exit
	;;
*)	echo "You must enter either the letter a or s."
	sleep 4
	;;
esac
done
