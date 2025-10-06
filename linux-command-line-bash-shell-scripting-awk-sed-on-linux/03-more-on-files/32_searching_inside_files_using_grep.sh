#################### Basic grep search ####################
# Search in file and display all the lines that contain string
grep an students 
grep Physics students

# Exact lines where search pattern occurs
grep -n Physics students

# Count number of lines the search pattern occurs
grep -c Physics students

# Invert search, all lines that DON'T contain string
grep -v Physics students

# Search for something not present in file
# Nothing will be displayed
grep Biology students

# Ignore case while searching
grep -i chemistry students 

# Search for pattern in more than one file
# File name will be displayed, along with line that contains the pattern
grep Bangkok students teachers

# Use -h option if you don't want line containing pattern to be preceded with file name
grep -h Bangkok students teachers

# Display only file names where search pattern is found
grep -l Bangkok students teachers

# Search for word in all files in current directories
grep Bengaluru * # shell will replace this asterick with all the files in the current directory 

# Can ignore error messages by sending to null device
grep Bengaluru * 2> /dev/null 

# Search for pattern "New Delhi"
# Will get an error, grep: Delhi: No such file or directory 
# Vecuase of the space, grep will search for "New" as the pattern and "Delhi" and "students" as the files
grep New Delhi students

# To search for pattern with a space, need to enclose it in quotes
grep "New Delhi" students 

# Search for "*"
# "*" is a wildcard so it will replace it with all the file names in the current directory then execute
# The first file name is "Atul" so it will take this as the search pattern then search the remaining files in the directory 
cat * students

# To search for pattern containing a wildcard
# Enclose pattern with quotes protects it from the shell 
# Good idea to always include patterns inside of quotes as it will not do any harm 
cat "*" students

# Search directories
# Search for pattern in all files of home directory
grep -r Bengaluru ~  

# No directory specified, search will done in the current directory 
grep -r Bengaluru 

# Specify more than one pattern
# Put -e before each pattern that has to be searched
# Then the filename 
grep -e "Chennai" -e "Bengaluru" -e "New Delhi" students

# Patterns can be stored in a file 
# And the file can be used instead of specifing multiple pattern
# One pattern on each line 
cat India

# Output
# Bengaluru
# Chennai
# New Delhi 

# Search for patterns contained in a file 
grep -f India students

#################### grep on right side of pipe ####################
# If no file name is provided, takes input from Standard Input
# Therefore we can use it on the right side of a pipe
# Use grep to scan the output of a command
who | grep "john" 

# Use grep with ls command
ls -l | grep "my"

#################### grep on left side of pipe ####################
# grep writes its output to Stanadrd Output 
# So can use it on the LEFT side of a pipe also 

# Can send output of grep to grep itself
cat myfile
grep "raj" myfile | grep "kumar" | grep "garg"

# grep "raj" myfile = is taking input from myfile
# grep "kumar" and grep "garp" = taking inputs from the pipes
# final output is all lines that contain all three words 

# When we use -e option, it display lines that contain any one of the specified charactres (OR behavior)
# By piping grep commands, able to search lines that contain ALL the specieifed patterns (AND behavior)
# Can be in any order though, will need to use Regular Expressions to search for multiple patterns in the same order which thye are specified