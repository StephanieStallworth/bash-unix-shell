#################### Redirect Standard Output ####################
### list ###
ls - l *.cpp
ls *.cpp > cppfileslist

### sort ###
cat cmdlist
sort cmdlist 
sort cmdlist > sorted list 

# Be careful applying if file already exists 
sort cmdlist > cmdlist 
cat cmdlist 

### cat ###
cat f1
cat f2
cat f3
cat f1 f2 f3
cat f1 f2 f3 > newfile
cat newfile

# Dash indicates input from Standard Input
# To combine keyboard input.  Use `–` where you want to read from the stdin(keyboard).  
# Can insert lines from keyboard, then files f1, f2, and f3 will be concatenated  
cat - f1 f2 f3 > newfile

cat > fileA

# cat command with no arguments takes input from Standard Input and dsiplays to Standard Ouput
cat 

# Input still coming from Standard Input, Standard Output is being redirected 
cat > fileB

# Ouput direction operation followed by a name will create a new file
# If you write the name of an existing file after redirection operator, contents will be erased. Must use >>  to avoid

 > file6

# If file already exists, the existing content will be erased
cat file7
> file7

### Append ###
# Append date to file
cat xyz 
date >> xyz
cat xyz 

# Append working directory to file
pwd >> xyz 
cat xyz 

# Write contents of a file to end of another file
cat f1
cat bigfile 
cat f1 >> bigfile

# Add several files to end of existing file
cat f2 f3 f4 >> bigfile

# Append contents to a file without opening the editor
cat >> bigfile
kn text
words words words
<CTRL + d>

#################### Redirect Standard Input ####################
# Word count of file
# wc command reads from f1 file
# The wc command KNOWS that its reading from the file f1. 
wc f1 

# No arguments, takes intput from Standard Input
wc

# Standard Input redirected to file
# Similar output to wc f1 above, but are being executed differently,  filename is not displayed not displayed here
# Command doesn't know anything about the file f1
# Itjust knows it's reading from the Standard Input, which the shell has temporarily redirected to file f1 
wc < f1

#################### Redirect Standard Input and Standard Output ####################
# Combine to read input from file AND send output to file
sort <fileB > fileC 