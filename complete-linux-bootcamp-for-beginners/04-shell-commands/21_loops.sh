#################### counter.sh ####################
#! /bin/bash

# Counts from 1 to $1 using for, while, and until loops

# Ensure only one argument: 

if [ $# -eq 1 ]; then
	# a counter varaible 
	counter="1"

	echo "for loop"
	# for i in $( seq 1 $1 ); do # loop through a sequence from the number 1 to whatever the command line argument is, sequence command can take a variable - important! 
	for i in {l..7}; do # another for loop construct for counting that will generate a range of number if outer number or "terminals" of  range are actually numbers, no variables! 
		echo $i
	done
	echo "while loop:" # while this test is true do the loop 
	while [ $counter -le $1 ]; do
		echo $counter
		counter=$(( counter + 1 )) # important, if we don't increment loop will never exit
	 done
	 counter="1" 
	
	echo "until loop:" # inverse of while 
	until [ $counter -gt $1 ]; do 

####################  Execute in terminal ####################
./count.sh 5 