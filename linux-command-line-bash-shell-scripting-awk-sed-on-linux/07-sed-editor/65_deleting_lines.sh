# View file
cat empdata 

# Delete all lines 
sed 'd' empdata 

# Delete 4th line
sed '4d' empdata 

# Delete last line 
sed '$d' empdata 

# Delete from lines 4 to 8
sed '4,8d' empdata 

# Delete all lines containing pattern
sed '/London/d' empdata 

# Delete all lines that do NOT contain pattern
sed '/London/!d' empdata 

# Delete empty lines from file
# Note: A "blank" line can still contain spaces or tabs here
sed '/^$/d' fileA 

# Delete ALL blank lines from file including spaces and tabs
sed '/^[ \t]*$/d' fileA

# Delete all lines starting from line containing the pattern 'Oliver' to line containing 'Smith'
sed'/Oliver/,/Smith/d' empdata 

# If 2nd pattern is not contained in the file, then all lines until the end are deleted
sed'/Oliver/,/smith/d' empdata 

# Delete all lines that contain 'London' until the pattern 'Berlin' found
# Since Berlin is not in the file, all lines until the ned are deleted 
sed '/London/,/Berlin/d' empdata 