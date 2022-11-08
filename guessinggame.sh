#!/user/bin/env bash

number=$RANDOM
let number=1+$number%100
count=1

function prompt {
	read -p "Guess a number (1-100): " guess
}

function guess {
	prompt
	while [[ $guess -ne $number ]]
	do
		if [[ $guess -gt $number ]]
		then
			echo "Too high! Try again."
			let count+=1
			prompt

		elif [[ $guess -lt $number ]]
		then
			echo "Too low! Try again."
			let count+=1
			prompt
		fi
	done
	
	echo "Your guess of $guess is correct with $count attempt(s)! Congratulations :)"

}

guess
