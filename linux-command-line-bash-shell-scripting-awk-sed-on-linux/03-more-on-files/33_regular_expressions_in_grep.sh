####################  . regular expression ####################
# Note: Enclosing patterns in quotes 
# Search for all 3-character strings starting with letter "t"
# "." means any single character 
grep "t.." file1

# Search for all 4-character strings that start with a captial letter and end in a digt 
grep "[A-Z]..[0-9]" file1 

# Search for all 4-character strings that do NOT start with a captial letter but end in a digit 
# Spaces are counted as "character"
grep "[^A-Z]..[0-9]" file1 

####################  * regular expression ####################
# Search for two different spellings of color
grep "colou*r" file1 # Search pattern is "colo" followed by zero or more "u" followed by r 

# One more example using closure operator 
# Search for pattner "hello" followed by zero or more "o"
grep "helloo*" file1 

# Search for pattern "hell" followed by zero or more "o"
grep "hello*" file1 

# Search for all strings that start with "t" and end with "p"
grep "t.*p" file1

# Search for all strings that start with a capital letter and end in a number
grep "[A-Z].*[0-9]" file1

# Note with piping, it matches three words in any order: grep "raj" myfile | grep "kumar" | grep "garg"
# Use grep to display only lines that contain strings in the order specified
grep "raj.*kumar.*garg" myfile

#################### Using anchor characters ####################
# Search for all lines beginning with the string "fine"
grep "^fine" file2

# Search for all lines ending with the string "fine"
grep "fine$" file2

# Display those lines that begin with "fine" and end with "fine"
# Find the lines that contain only the word find
grep "^fine$" file2

# Write a pattern that contains only the two anchor characters 
# This pattern denotes empty lines, liens that don't contain anything - not even spces or tabs
grep "^$" file2

# Display all non-empty lines
grep -v "^$" file2

# Count the number of empty lines
grep -c "^$" file2

#################### Pipe into grep command ####################
# Display only information of directories (lines that begin with character "d" in the output of ls command)
ls -l | grep "^d"

# List only files that others can read and execute
ls -l | grep "^......r.x"