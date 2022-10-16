#!/bin/bash

# First Beast battle: If you select the same number as the beast, you win, else, you lose.

echo "Welcome you Tranished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read -r class

case $class in 

	1)
		type="Samurai"
		hp=10
		attack=20
		;;

	2)
		type="Prisoner"
		hp=20
		attack=4
		;;
	3)
		type="Prophet"
		hp=30
		attack=4
		;;
esac
#telling bash that we are done with the case.
sleep 2
echo "You have chosen $type class. Your HP is $hp and your attack is $attack."
sleep 1
beast=$(($RANDOM % 6))
#RANDOM % 6 PICKS A NUMBER BTW 0 AND 9.. AND SO ON..

echo "Your first beast approaches, Prepare to battle."
sleep 1
echo "Coming...."
sleep 1
echo "......."
sleep 1
echo "Now type or select a number between 1 and 5.. like 1..2..3..4...or 5"

read -r tarnished
if [[ $beast == "$tarnished" ]]; then
	echo "Beast VANQUISHED!!! Congrats fellow tarnished. You won!"
else
	echo "You died modafucker!"
	exit 1
fi

sleep  2

echo "Now that you have  conquered that.. Prepare for the next battle"
sleep 2
echo "......."
sleep 1 

echo "Boss battle. Get scared. It's MARGIT."
sleep 1
echo "Now type or select a  number between 0-9. (0,1,2...9)"
read -r tarnished

beast=$(($RANDOM % 10))

if [[ $beast == "$tarnished" || $tarnished == "bantty" ]]; then
#The cheat code for this battle is <bantty>
	echo "Beast VANQUISHED!! You won braaa!!!"
else
	echo "You died modafucker.. Gerrarahear!!"
fi
#fi at the end of the scripts confims the conditionals is over, otherwise it will not work.


