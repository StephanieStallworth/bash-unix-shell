#################### Append or Insert Single Line ####################
# Add new line after 5th line
sed '5a\
> This is a new line' empdata 

# Add new line before 5th line
sed '5i\
> This is a new line' empdata 

#################### Append or Insert Multiple Lines ####################
########## Numeric Address ##########
# Add multiple lines before 5th line
sed '5i\
> new line1\ 
> new line2\ 
> new line3\
> new line4' empdata

# Add multiple lines after 5th line
sed '5a\
> new line1\ 
> new line2\ 
> new line3\
> new line4' empdata

# Add multiple lines after last line
sed '$a\
> new line1\ 
> new line2' empdata

# Add multiple lines before first line
sed '1i\
> new line1\ 
> new line2' empdata

########## Pattern Address ##########
# Add before multiple lines before each line containing pattern 'London'
sed '/London/i\'
> new line1\
> new line 2' empdata 

# Add before multiple lines after each line containing pattern 'London'
sed '/London/a\'
> new line1\
> new line 2' empdata 

########## No Address ##########
# If you don't give address in commands, new line will be inserted or appended after every line
# Can use to add blank lines after each line
sed 'a\
> ' empdata