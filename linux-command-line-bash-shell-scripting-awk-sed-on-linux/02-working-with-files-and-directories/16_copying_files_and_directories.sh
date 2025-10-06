# Create copy of file
ls 
cat file1
cp file1 fileA 
cat fileA
cp file1 fileB # overwrites existing fileB

# Use interactive option
cp -i file1 fileC 

# Provide absolute or relative path names for both source and destination files
cp /etc/passwd ../dir/passwordfile

# Copy file into directory
ls 
ls dirA
cp file1 dirA # file will be copied with the same name in this directory

# Copy multiple files into directory
cp file2 fileA fileB /etc/passwd dirA

# Destination not in current directory
# Specify absolute or relative path to it 
# If destination directory doesn't exist, cp will NOT create it
cp file2 fileA fileB /etc/passwd dirB 

# Best to put ending forward slash to end of directory name 
# To indicate that this is directory and not a file
# Otherwise will copy file with name of directory instead of copying into directory
cp file1 dirB/

# Copy entire directory structure
# Check structure 
ls -R dir1 

# copy 
cp -r dir1 dir2 

# Check strcuture
ls -R dir2 

# Source directory copied into another directory 
ls 
cp -r dir1 dirA 

# Copy more than one directory
cp -r dir1 dir2 dirB newdir