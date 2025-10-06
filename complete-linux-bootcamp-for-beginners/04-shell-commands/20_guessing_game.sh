# guess.sh 

#!/bin/bash

# if there is one argument:
if [ $# -eq 1]; then
	# generate a random number between 1 and the argument:
	# seed with the PID of the script (every job that is running in the shell has a process ID that is guaranteed to be unique over the run of that shell) 
	RANDOM=$$ # Shell internal called "RANDOM", PID fo the script is "$" variable. Seed means to assign a starting point  

	# debug only:
	# ps # see process IDs of every running job 
	# end debug 
	
	# get a random nubmer between 0 and $1 - 1 inclusive:
	correct=$(( RANDOM % $1 )) # % operator takes the remainder of the division of the random number
	# add one:
	correct=$(( correct + 1 )) 
	
	# set up an initially incorrect guess
	guess=0
	
	# debug only:
	# echo "number is $correct"
	# end dbug 
	
	# a variable to count the guesses:
	count=0
	
	# get guesses from the user until they
	# get it right:
	while [ $guess -ne $correct ]; do # executes while its test is true
		# get a guess
		echo "Guess my number (1 - $1) -> "
		read guess # reads into a varaible whatever the user types
		
		# count this guess
		count=$(( count + 1 ))
		
		# too high, too low, or just right?
		if [ $guess -gt $correct ]; then
			echo "Too high!" Try again ->"
		elif [ $guess -lt $correct ]; then 
			echo "Too low! Try again -> "
		else
			echo "Correct. Guess $correct in $count tries!"
		fi 
		
	done # end of while loop

else
	echo "USAGE: guess <num>, whre the correct answer will be \n"
	echo "a random number in the range 1...num inclusve.\n\n"
fi 

-------
# Execute script in terminal  
chmod 755 guess.sh 
./guess.sh 50