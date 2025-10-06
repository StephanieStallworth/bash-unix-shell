#################### Basic tr commands ####################
# Convert all lowercase 'a' to uppercase 'A'
tr 'a' 'A' < file1

# More than one character in both lists 
tr 'a,%.' 'A:$!' < file1

# 2nd list has fewer characters than 1st list 
# Extra 2 characters in 1st list will be replaced by ! (last character is the 2nd list)
tr 'a,%.' 'A!' < file1

# Without quotes, still works
# But if character list contains shell meta charactres (wildcards) you'll get unexpected results
# Better to always enclose in quotes 
tr a A < file1

#################### tr with wildcard characters ####################
# Replace 'a' with an asterisk '*'
# Get an error message, because shell repaced * will all the files names in the current directory
tr a * < file1

# Enclose asterisk inside quotes to get desired output 
tr a '*' < file1

# Convert all new lines to colons using Escape Sequence  
tr '\n' ':' < file1

# Convert all new lines to colons using Octal code
tr '\012' ':' < file1

#################### pipe into tr command ####################
# Pipe output of date command into tr and replace space with new line
# Print each field on a new line
date | tr ' ' '\n'

# Convert uppercase letters to lowercase 
cat file1 | tr 'a-z''A-Z' 

# Convert lowercase letters to uppercase
cat file1 | tr 'A-Z''a-z'

# Covert lowercase to uppercase
cat greekfile | tr "[a-z]" "[A-Z]"

# Replace multiple occurances of dots int a single dot  
tr -s '.' < file3

# Translation and squeezing
# Replace all dots with spaces
# Then squeeze multiple occurances of spaces into a single space
tr -s '.' ' ' < file3

# Translate question marks into exclamation marks
# Then squeeze the exclamation marks
tr -s '.?' ' ' < file3

# Delete every occurance of character from input
tr -d 'aeiou'

# Replace all non-alphabetic characters by a space
# Every character EXCEPT the characters is the 1st list will be replaced 
tr -c 'a-zA-Z' ' ' <file3

# If you don't what to translate the newline character
tr -c 'a-zA-Z\n' ' ' <file3

# Delete all characters except alphabetic characters, new lines and spaces
# Combing -c and -d options 
tr -cd 'a-zA-Z\n ' < file3