#################### file command ####################
# file
file etc/passwd

# Provide more than one file as argument 
# In Linux everything is considered a file, even directories 
# Determines type of file by reading first few lines of the file
file etc/passwd /bin/ls /home

#################### clear command ####################
clear

#################### wc command ####################
wc /etc/passwd 
# 45 = lines in file, 74 = words in file, 2504 = characters in file, /etc/passwd = filename
# 45   74  2504  /etc/passwd  

# Lines only 
wc -l /etc/passwd

# Words only
wc -w /etc/passwd

# Characters only
wc -c /etc/passwd

# Count for more than one file 
wc /etc/passwd  /etc/hosts /etc/hostname 

# With no arguments
# Takes input from the standard input, which is the keyboard by default 
# Then CTRL + D to execute 
wc 
first line
second
third

#################### Up and Down Arrow Keys ####################
# Use up or down arrow key to get previously executed commands

#################### date command ####################
date

#################### cal command ####################
# Calendar of current month 
cal 

# Calendar of February 2010
cal 02 2010 

# Calendar of 2010
cal 2010

#################### echo command ####################
# Display text
echo this is it 

# Values of variables
# Geneally used in shell scripts to display messages on the terminal 
echo $HOME
echo $PATH

#################### who command ####################
# Linux is a multi user system
# To see currently logged in users, use who command
who

#################### whoami command ####################
# Name of user who runs this command
whoami 