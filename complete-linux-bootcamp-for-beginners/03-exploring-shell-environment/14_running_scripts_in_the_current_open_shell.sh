#################### Create New Script ####################
# Move current working directory 
cd Documents/ShellCourse/Bash
cd ~

# Create new file that moves you to working directory 
emacs ccd.sh # add .sh extension to get highlighting 

# !/bin/bash
# cd /home/rick/Documents/ShellCourse/Bash

# Change permissions
ls -l
chmod 755
ls -l

#################### Test the Script Works ####################
ccd.sh 

# Will see that it changed directories in its own copy of the shell, but exited leaving you in the same directory back at the current shell  
# Everytime bash or shell script executes it executes in its own copy of the shell

# Need to force it to execute in the current copy of the shell
# ". " tells the script to execute in THIS working copy of the shell not to create a new copy of the shell to execute its commands in 
. ccd.sh 

# Move script to /usr/local/bin
cd ~
sudo mv ccd.sh /usr/local/bin 

# Test that it works now
. ccd.sh 

#################### Create an alias for script ####################
# Want to just type "ccd" and get it to do the ". ccd.sh"
# Could rename it to "ccd" .sh exention, but still would have to type " ." in front of it in order to execute in the current shell 
# Better to make an alias so don't have to run ". " everytime you want to run the script 

# Create alias
alias ccd='. ccd.sh'

# Execute script with alias 
ccd 