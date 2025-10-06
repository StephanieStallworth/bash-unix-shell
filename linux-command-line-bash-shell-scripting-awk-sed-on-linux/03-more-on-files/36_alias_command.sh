#################### Simple alias examples ####################
# Define simple alias
alias li='ls -l'

# Execute alias
li 

# Use arguments with alias
li *.txt

# Make an alias to see only directories in output of ls command
alias ldir='ls -l | grep ^d'
ldir

# Display list of all alias defined
# This includes alias that your Linux distribution has set 
alias

#################### See all alias/remove ####################
# See alias definition (command assigned to the alias)
alias ldir 

# Remove an alias
unalias ldir 

##### Alias with same name as existing command ######
# Define alias to invoke the interactive version of rm command
alias rm='rm -i'

# To use original version of rm command have to precede with "\"
# Use backslash to override the alias 
\rm file1

# Alias to backup all ".cpp" files in directory
alias bkcpp='find . -name "*cpp" -exec cp {} {}.bkup \;'

# Alias to remove all backup files
alias rmbkup='find . -name "*bkup" -exec rm {} \;

#################### Directory alias #################### 
# Alias to move up 2 directory levels 
alias 2..='cd ../..'

# Alias to move up 3 directory levels 
alias 3..='cd ../../..'

# Alias to move up 4 directory levels 
alias 4..='cd ../../../..'

# Add alias to .bashrc file to make permanent  
# Exit then enter again and it will be activated
vi .bashrc
alias li='ls - l' 