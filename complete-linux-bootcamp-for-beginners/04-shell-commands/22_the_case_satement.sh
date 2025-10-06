#################### menu.sh ####################
emacs menu.sh 
 
#!/bin/bash

echo 'Please choose an option: '
echo '1: change to directory one'
echo '2: change to directory two'
echo '3: change to directory three'
echo 'Q: quit'
read choice

bashdir='/home/rick/Documents/ShellCourse/Bash/' # assigning variable so we can include it in command below 

case $choice in 
25) # number before parenthesis is actually a regular statement, if choice variable literally matches the regular expression 1 move to directory one
	cd ${bashdir}one/
	;; # each case will terminate with double semi-colons
2)
	cd ${bashdir}two/
	;;
3)
	cd ${bashdir}one/
	;;
[Qq]) # make input case sensitive

*) # start within case statement indicates anything else
	echo 'Incorrect menu entry'
esac  

###### Then execute in terminal #######
. menu.sh 

# Add to script to alias to avoid typing ". " every time
emacs .bash_aliases 
alias ccd=' . ccd.sh'
alias menu='. menu.sh'