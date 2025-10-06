#################### ls switches ####################
# List in "long format", detailed information 
ls -l 

# First letter tells us what entry is, remaining letters tell us what the permissions are
# d = directory 
# nothing or "-" = files
# l = symbolic link to another location can be a file or directory to some place on the system (alias from this location to another or rename something to another name)
# ".filename" = hidden 
# "." current working directory
# ".." parent of  working directory

# List "all", everything in working directory 
ls - a 

# Can combine command line switches any we want 
# See everything in long listing format 
ls -a -l
ls -la 
ls -al  