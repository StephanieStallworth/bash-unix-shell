# Regular expression that matches dash at the beginning of line
ls -l /bin | grep '^-'

# Look for all patterns where grep is at the end of the line 
ls -l /bin | grep 'grep$'

# Look at contents of etc directory looking for regular expression that matches 'Aug'
ls -l /etc | grep 'Aug' # same listing we got before 

# List out contents of both etc and bin folders and grep it for regular expression 'Aug'
ls -l /etc /bin | grep 'Aug'

# Count only
ls -l /etc /bin | grep -c 'Aug'

# Echo then pipe to grep 
echo 'ABC' | grep 'A'

# Find just directories
ls -lF / |grep "opt"

# Find everything that is not a directory 
ls -lF /etc/ | grep -v "/"

# Redirect output 
ls -lF /etc/ | grep -v "/" | sort -r > ~/files.txt

# Search man pages
man -k print | grep files