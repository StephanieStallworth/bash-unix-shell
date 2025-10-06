#################### Outputs ####################
##### Standard Output #####
# Output will be sent from command and flow down the Standard Output stream, which is by default the terminal
date
# Output 
# Mon 16 Oct 19:33:32 BST 2017

##### Standard Error #####
# Error will be sent down Standard Error stream, which is by default the terminal 
date as;a;lfad;lfj

# Output 
# date: invalid date "as;a;lfad;lfj"

#################### Inputs ####################
##### Standard Input #####
# by default is connected to the keyboard
cat 
Hello 

# Output
# Hello
# See text is read from keyboard (i.e., Standard Input)
# Then sends it to Standard Output (i.e., the terminal )
# Can pass the S/O to S/I stream of another command known as "piping" together commands

##### Command Line Arguments #####
# Pass command line argumnet as input for command  
cal 12 2017 