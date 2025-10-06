#################### Adjacent Duplicate Lines ####################
# Original file with duplates
# Note that Ajita is a non-adjacement dupe
cat names

# Output
# Ajita
# Ankita
# Ankita
# Ankita
# Neha
# Geetika
# Priyanka
# Priyanka
# Anupama
# Ajita 
# Deepali 

# Remove ADJACENT duplicate lines and display remaining unique lines to the screen
# Note that the non-adjacent Ajita is still there 
uniq names
# Output
# Ajita
# Ankita
# Neha
# Geetika
# Priyanka
# Anupama
# Ajita
# Deepali 

# Removes adjacment duplicate lines and display remaining unique lines to the screen (similar to uniq without option above)
# But ALSO prints the TOTAL number of times that line occurs in the input file (including the dupes), like a "Group By" count
uniq -c names

# Output
# 1 Ajita 
# 3 Ankita
# 1 Neha
# 1 Geetika
# 2 Priyanka
# 1 Anupama
# 1 Ajita
# 1 Deepali 

# Display only lines that are duplicated
uniq -d names

# Output 
# Ankita
# Priyanka 

# Remove ADJACENT duplicate lines and display remaining unique lines to the screen
# But only displays lines that had NO duplicates at all  
# Ankita total count = 3, Priyanka total count = 2 so they are not displayed at all
unique -u names
# Ajita
# Neha
# Geetika
# Anupama
# Priyanka
# Ajita
# Deepali 

# Write output of uniq to a file
uniq names names1
cat names1

#################### Non-Adjacent Duplicate Lines ####################
# Make duplicate lines adjacent
sort names

# Output 
# Ajita
# Ajita
# Ankita
# Ankita
# Ankita
# Anupama
# Deepali
# Geetika
# Neha
# Priyanka
# Priyanka 

# Send this output to uniq
sort names | uniq

# Output 
# Ajita
# Ankita
# Anupama
# Deepali
# Geetika
# Neha
# Priyanka

# Send output to a file
# Can  "-" in place of the Input file, because we piping output of uniq command to Standard Input
# Then it will take Standard Input and write to file names2
sort names | uniq - names2
cat names2

# OR could simply just redirect the output straight to file
sort names | uniq > names3

#################### Delete Multiple Blank Lines ####################
# File containing extra blank lines
cat file1 

# Now there is only one single blank line between 
uniq file1 
uniq file1 > file2

#################### Basic Example ####################
# Remove adjacent dupes and send output to another file  
uniq names names 1

# Remove non-adjacent dupes and send to another file 
sort names |uniq – names2 or $sort names | uniq > names3