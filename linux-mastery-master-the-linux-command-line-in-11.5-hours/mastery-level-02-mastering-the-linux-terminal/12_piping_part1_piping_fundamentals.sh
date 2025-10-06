#################### Piping  ####################
# Redirect Standard Output to file
date > date.txt # 1 is optional  
cat date.txt 

# Read date.txt into Standard Input of cut command
cut < date.txt # 0 is optional 

# Read FILE into cut command then cut the first field 
# Works but clunky because creating an extra file 
cut < date.txt --delimiter " " --fields 1 

# Pipe data from date COMMAND into cut command and cut the first field 
date | cut --delimiter " "  --fields 1

# Write output to file 
date | cut --delimiter " "  --fields 1 > today.txt

# Doesn't matter where you put the redirection 
date | cut > today.txt --delimiter " " -- fields 1
date | cut --delimiter " " > today.txt --fields 1

# Send output into another command
date | cut --delimiter " "  --fields | commands -options args 