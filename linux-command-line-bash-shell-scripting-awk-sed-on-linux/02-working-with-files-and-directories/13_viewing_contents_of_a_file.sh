#################### touch command ####################
# Create empty text files
touch fileA file B fileC 

#################### cat command ####################
### Single Files ###
# Create file using cat command
cat > file
line 1
line 22
line 3
#CTRL + d to signify end of input 

# View contents of file
cat file1

# Print contents of file and redirect output to file 
cat filename > filename.csv

# Create a file that doesn't already exist	
cat > file 1  
words, words, words # CTRL + d for end of file marker

# Make output scrollable
cat nohup.out | less

# To get the first 2 lines.  Don't have to pipe to head command, to operate directly one files
cat output.txt | head -n 2

# Appending file to the end of another
cat file2 >> file1

# Append skipping header
(cat file1 ; tail -n +2 file2 ) >> file3

### Multiple Files ###

# View contents of more than one file
# files are concatenated and displayed
cat file1 file2 file3

# Concatenating files that do not have header 
cat *file*.txt > merged-file.txt

# Concatenating files with brace extension and redirect to file 
cat file{1..5}.txt > output.txt

# Combining all files in a directory into one
# [How to Merge All Text Files in a Directory](https://unix.stackexchange.com/questions/3770/how-to-merge-all-text-files-in-a-directory-into-one)  
cat * > merged-file

#################### cat command options ####################
# Line numbers
cat -n poem

# Only number lines with text
cat -b poem 

#################### tac command ####################
# See lines in reverse order (last line first)
tac poem

# Concatentate files and reverse lines in backwards order 
cat file{1..5}.txt | tac

########### rev command #############
# Concatentate files and reverse the text within each line
cat file{1..5}.txt | rev

###### head and tail commands ##########
# Display first 10 lines
head poem 

# Display first 3 lines
head -3 poem 

# Display last 10 lines
tail poem

# Display last 3 lines 
tail -3 poem

# Combining files with the same header   
# [Concatenate Multiple Files With Same Header](https://unix.stackexchange.com/questions/60577/concatenate-multiple-files-with-same-header)  
# 1. Write the header of the first file into the output: 
head -2 file1.txt > all.txt   
-- head -2 gets 2 first lines of the file. 

# 2. Add the content of all the files:  
tail -n +3 -q file*.txt >> all.txt  
-- -n +3 makes tail print lines from 3rd to the end, -q tells it not to print the header with the file name (read man), >> adds to the file, not overwrites it as >.  
And sure you can put both commands in one line:  
head -2 file1.txt > all.txt; tail -n +3 -q file*.txt >> all.txt  				

#################### more command ####################
# Spacebar or f = move forward one page 
# b = move backwards 
# Enter = move line by line 
# h = help 
# q = exit 

more poem2

#################### less command ####################
# Operates like more command
# Space = ove down one page
# Enter = move down one line 
# Can also use up and down arrow keys and page up/page down
# h = help, can see less has more features
# q = exit 

less poem2