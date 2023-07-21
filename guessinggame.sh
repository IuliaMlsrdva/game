#!/usr/bin/env/ bash
#File: guessinggame.sh

nr_of_files() {
	local count_of_files=$(ls -A | wc -l)
	echo "$count_of_files"
}

main() {
	local real_nr_of_files=$(nr_of_files)
	local prompt=-1

while [ "$prompt" -ne "$real_nr_of_files" ]; 
do
	read -p "How many files are in this direcrory? Write your prompt:" prompt
	if [ "$prompt" -lt "$real_nr_of_files" ];
	then 
		echo "The prompt you guessed is low. Try again:"
	elif [ "$prompt" -gt "$real_nr_of_files" ];
	then
		echo "The prompt you guessed is high. Try again:"
	else
		echo "Congratulations!"
	fi
done
}

main
