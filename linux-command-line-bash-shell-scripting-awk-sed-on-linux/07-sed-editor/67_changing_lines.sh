# Change 5th line
sed '5c\
> This is a new line' empdata

# Change all lines from line 3 to 8 to a new line
sed '3,8c\
> This is a new line' empdata

# Change all lines containing pattern to a new line 
sed '/London/c\'
> This is a new line' empdata