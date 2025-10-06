#################### -name option ####################
# Search for file name "myfile" in this directory
find /home/deepali/\Course -name myfile

# Use just directory name and not whole path
find Course -name myfile

# Find files, ignoring case
find Course -iname myfile

# Search in mutiple directories
find Course Documents -iname myfile

# Use wildcards, speicfy in quotes
# Find all files that start with "myfile"
find Course Documents -iname "myfile*"

# Line count of CSV files in directory   
find . -name '*.csv' | xargs wc -l

#################### -type option ####################
# Find all directories
find Course -type d

# Find all ordinary files
find Course -type f

# Find all symbolic links
find Course -type l

# Count of files in subdirectories  
# https://superuser.com/questions/474334/count-of-files-in-each-sub-directories
find . -type f | cut -d"/" -f2 | uniq -c 

# Sum of Lines in Sub Directories
# https://stackoverflow.com/questions/13727917/use-wc-on-all-subdirectories-to-count-the-sum-of-lines  
find . -type f -print0 | wc -l --files0-from=-

#################### -perm option ####################
# Specify permissions in search criteria
find Course -perm 775
find Course -perm 664

#################### specify action ####################
find Course -name myfile -print 
find Course -name myfile -ls # runs lslids command against all files that are found
find Course -name myfile -exec file {}\; # run file command against all files that are found
find Course -name myfile -exec ls -l {}\; # run ls -l command against all files that are found
find Course -name myfile -exec rm -i {}\; # run interactive option of rm command against all files that are found
find Course -name "*cpp" -exec cp {} {}.bkup\; # backup all files that are found

#################### -ok option ####################
# Same results as -exec option
# Instead of running -exec, can run -ok option which is interactive, asks for confirmation for each file found
find Course/dir2 -name "my*" -ok cp {} {}.bkup \; # backup of all files that start with "y"

#################### locate command #################### 
# Locate file
locate student 

# Case insensitive search
locate -i student 

# Create new file and try to locate 
touch stduentresults

# File will not be found by locate command
locate studentsresults

# File found with find command
find student results 