
#assign the Final nubmer of files in the directory 

final=$(ls -l | grep -v ^l | wc -l)

#echo "Final number is $final"

#ask how many files
#determine if it's an integer and assign it as the varialbe 

function guess {
	echo -n "Guess How Many Files Are In This Directory?"
	read guess

	while ! [[ "$guess" =~  ^-?[0-9]+$ ]];  #make sure the entry is a number
	do
		echo "you guessed $guess, we need a number"
		echo -n "Guess How Many Files Are IN This Directory"
		read guess
	done
	echo "you guessed $guess" 
}

guess
#add the loop
while  [[ $guess -ne $final ]] #compare the guess to the final number
do
	if [[ $guess -gt $final ]]
			then 
			echo "Lower Bob"
	guess
	elif [[ $guess -lt $final ]]
		then			
		echo "Higher Bob"
	guess	
	fi
done
echo "YOU GUESSED IT!!!!" 


