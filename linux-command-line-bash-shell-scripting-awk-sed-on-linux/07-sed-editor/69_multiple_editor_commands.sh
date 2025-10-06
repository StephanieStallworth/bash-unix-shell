# View file
cat data.txt

#################### Execute Multiple Commands 3 Ways ####################
# 1. Run multiple editor commands - 2 substitute commands and 1 delete command
sed -e '2,6s/Linux/Unix/; l,9s/London/Delhi/; 10,12d' datatxt

# 2. Run same commands but write on separate lines instead of separating with semi-colons
sed -e '2,6s/Linux/Unix/
> l,9s/London/Delhi/
> 10,12d' data.txt

# 3. Run same commands but prefix each editor command with -e option, enclosed in single quotes
sed -e '2,6s/Linux/Unix/' -e 'l,9s/London/Delhi/' -e '10,12d' datatxt

########## -f option ##########
# View files
cat fileX.sed
cat students

# Apply commands from sed file to input file or files
sed -f fileX.sed students
sed -f fileX.sed teachers
sed -f fileX.sed students teachers # get combined output 

########## -f and -e options ##########
# -f option indicates the next agument is a file containing editing commands
# -e option indicates the next argument is an editing command
sed -f fileX.sed -e '$d' students 

########## Part 2 sed: Grouping Multiple Commands ##########
# Apply 4 commands from line 3 to line 9 by grouping
sed -n '3,9{p; s/Linux/Unix/; s/London/Delhi/; p}' data.txt

# Use "p" flag instead of last p command 
# So only 3 commands inside group
sed -n '3,9{p; s/Linux/Unix/; s/London/Delhi/p}' data.txt

# Execute commands in group on all lines of the file 
sed -n '{p; s/Linux/Unix/; s/London/Delhi/p}' data.txt