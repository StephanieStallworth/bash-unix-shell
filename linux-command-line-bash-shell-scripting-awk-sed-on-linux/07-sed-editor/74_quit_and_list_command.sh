#################### quit command ####################
# Quit after the Nth line
# Prints all the lines up to the 5th line then quits 
# Will just quit the first 5 lines (from the automatic printing of the sed command)
sed '5q' empdata 

# Quit after pattern
# Will print all lines up to the first line matching the pattern 'London' 
sed '/London/q' empdata 

#################### list command ####################
# Display hidden characters like tabs and end of lines   
sed 'l' data.txt