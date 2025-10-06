#################### Writing to Another File ####################
# View file
cat data.txt 

# Create an exact copy of file data.txt
# Can be done using the cp command also but sed is more powerful because we can write selective lines to the other file 
sed 'w newfile' data.txt

# Write only lines 2 to 6 to new file  
sed '2,6w fileX' data.txt
cat fileX 

# Supress output while writing the files with -n option
# Lines 2-6 written to the file without being displayed on the screen 
# Output will not be returned to the screen but lines will be written to the file 
sed -n '2,6w fileX' data.txt

# Write all files from data.txt that contains the string 'Linux' to fileY 
# Still supressing the output with -n option 
sed -n '/Linux/w fileY' data.txt
cat fileY 

# Write to multiple files 
# From data.txt
# All lines containing "Unix" write to file1 
# All lines containing "Linux" write to file2
# All lines contain "Windows" write to file3
sed '/Unix/w file1 
> /Linux/w file2
> /Windows/w file3' data.txt

# Confirm
cat file1
cat file2
cat file3

# Write all lines that contain 'Windows' to one file and the remaining lines to aonther file 
sed -n '/Windows/w fileA # Command 1 = All lines that contain 'Windows'
> /Windows/!w fileB' data.txt # Command 2 = All lines that do NOT contain 'Windows'

# Split file into 3 pieces based on line numbers 
sed -n '1,5w dataA # Command 1
> 6,10w dataB # Command 2
> 11,$w dataC' data.txt # Command 3