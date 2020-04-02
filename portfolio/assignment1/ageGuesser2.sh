#!/bin/bash

#Age Guessing Game. Ben D'crus - 10498343

#Variables							
age=$(( $RANDOM % (20 - 70)+20))
num1=20
num2=70

					
#Intro
echo "Hello, "${USER}
echo "Let's play a game. "

#While True Loop
while true; do
echo -n "Guess My Age Between 20 and 70: "

#While Read Loop
while read guess; do

	if [[ $guess -eq $age ]]; then
		break;
	else 
		if [[ $guess -lt $num1 ]]; then
			echo -n "Invalid! Must be a number between 20-70. Try Again: "

		elif [[ $guess -gt $num2 ]]; then
			echo -n "invalid! Must be a number between 20-70. Try Again. "

		elif [[ $guess -lt $age ]]; then
			echo -n "Too Low. Guess Again: "

		elif [[ $guess -gt $age ]]; then
			echo -n "Too High. Guess Again: "
		fi
	fi

guesses=$(( $guesses + 1 ))

done

echo "Correct! You win! "

if [[ $guesses == 1 ]]; then
    echo "It took you $guesses guesses to guess $age. "
else
    echo "It took you $guesses guesses to guess $age. "
fi

#case statement #PLay Again

read -p "Would you like to play again (y/n)? " select
case $select in
    [Yy]* ) guesses=1; break;;
    [Nn]* ) exit;;
    * ) echo "y or n? ";;
esac

done