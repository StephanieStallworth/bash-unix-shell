#################### ls commands - basic ####################
# Directories and files in current working directory
ls

# See files and directories color coded 
ls --color=auto

# Each file on a separate line 
ls -1

# Reverse order
ls -r

# Directory as argument
# List files in any directory without having to change to it
ls ls dirA # Relative path 
ls /etc # Absolute path 

# Check for file in parent folder without moving to that directory
ls ../final/

# More than one directory as argument
ls dirA dirB

# List all to see everything in directory
# Including hidden files denoted by .file 
# Linux uses hidden files to store configuration information
# Also shows hidden directories 
# current directory "." and parent directory ".."
ls -a 

# See all files without hidden directories current directory "." and parent directory ".." (shows all and hidden FILES only)
ls -A

# See details of the directory itself 
ls -ld

# List all subdirectories recursively
ls -R

# Use -F option to indicate file type
# Directory "/"
# Executable "*"
# Symbolic links "@"
# Fifo file type "|"
# ordinary files no characters 
ls -F

# Recursively display all subdirectories and files present in diretory
ls -R

#################### ls commands - long format ####################
# Long listing format
ls -l

# Output 
# total 48
# -rw-rw-r-- 1 deepali deepali 434 Oct 10 15:40 cprogram  

# total =  total number of blocks occupied by files in the directory 
# first character = file type: "-" ordinary file, "d" directory
# next 9 characters = permissions of the file 
# 1 = number of links of the file, for directory this number indicates the number of directories present inside it (includes two special directories "." and "..") 
# deepali = owner/creator of file
# deepali = group of the file 
# 434 = file size in bytes 
# Oct 10 15:40 = date and time file was last modified 
# cprogram = name of file or directory 

# List all in long listing format
ls -a -l 
ls -al

# Combine more than one option
ls -a -r - l
ls -r -l -a # write in any order
ls -rla # combine 
ls -rlaF 

# See files and directories present inside of directory argument
ls -l dirA

# See details of the directory argument itself
# without the "-d" option, details of the CONTENTS of the directory are displayed 
ls -ld dirA

# See details of a file
ls -l dirA/file1 

# Specify more than one file
ls -l dirA/file1 f1 f2

#################### Customize long format ####################
# Order files based on different attributes
# Default is to sort by file name

# By modification time
ls -lt # newest first
ls -ltr # oldest first

# By size
ls -lS # biggest first
ls -lSr #  smallest first 

# List file sizes in human readable form 
ls -lh 

# Display index number of each file
ls -li 

# Display userid and groupid instead of user name and group name
ls -ln 

#################### My Snippets ####################
# How to Check If File Exists in Shell
# https://stackoverflow.com/questions/40082346/how-to-check-if-a-file-exists-in-a-shell-script/40082454 
(ls x.txt && echo yes) || echo no`  

# Check if file exists  
ls x.txt >> /dev/null 2>&1 && echo yes) || echo no` 

# Get File Size & Line Count
# https://unix.stackexchange.com/questions/185968/get-file-size-and-line-count-at-the-same-time  
stat -c "%s %n" *gz $1

#  It will display whatever is supplied to it.  For example, get first three lines of a file 
 echo "$(<file.txt)" && head -n 3\*.csv