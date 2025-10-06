#!/bin/bash

#################### Pseudo Code ####################
# pseudo code of what we want to do
# then replace step by step with how we're going to do it below 

# if there is exactly one command line argument
	# treat that argument as a filename
	# if the file named in the argument exists
		# report that the file exists
	# else
		# report that the file does not exist
	# fi
# else
	# tell the user how to use the script
# fi 

#################### Final Version ####################
if [ $# -eq 1]; then  # the varaible "$#" how many command line arguments there are
	if [ -e $1 ]; then # name of current script is $0, first command line argument is $1 (filename we're passing to it), and so on  
		echo "file $1 exists" # double quotes because we're going to interpolate (insert) the file name
	 else
		echo "file $1 not found"
	fi
else
 echo "Usage: fe filename - report the existance of a file"
fi 