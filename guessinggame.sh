echo -e "\nHi there, Welcome to Guessing Game."

files=$(ls -1 | wc -l)

function Guess {
	until
	echo -e "\nHow many files do you think are in the directory?  " 
	read guess;
	[[ "$guess" =~ ^[0-9]+$ ]]; 
	do
		echo -e "\n Error!!!\n Your answer should be positive number, Try again. \n"
	done
}

Guess

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo -e "You entered $guess, which is lower than the requested number, try again. \n"
	else
		echo -e "You entered $guess, which is greater than the requested number, try again. \n"
	fi
	Guess
done

echo "     Well done! Your guess $guess is correct."
echo "     End Program."