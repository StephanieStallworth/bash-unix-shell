# Only list the files in which the match was found 
grep -l '^d' *dir.txt

# Only print those entries that do NOT contain a d at the beginning of line 
grep -L '^d' *dir.txt

# Line number of line in which regular expression matching pattern was found 
grep -n 'Aug' *dir.txt*

# Supress the output of file names
grep -h 'Aug' *dir.txt*