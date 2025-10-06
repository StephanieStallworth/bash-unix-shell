#################### Move Files ####################
# Move one file 
mv fileX ~/Documents/

# Move three files
mv file1 dir1/file2 ../file3 dir2/ 

# Move file to another directory with file name already existing in destination direcotry 
# File you want to move
cat fileA 
# The best way out is always through

# Existing file in destination directory 
cat dir1/fileA
# Never give up, great things take time 

# Moving file into destination directory
# Will see file is now overwritten
mv fileA dir1
# The best way out is always through 

# Use interactive option
# File we want to move
cat fileB
# It is fatal to enter any war without the will to win it

# Existing file in destination directory 
cat dir1/fileB
# Happiness is no the absense of problems, it is the ability to deal with them 

# Move using interative option
mv -i fileB dir1

# mv: overwrite /dir1/fileB'? no
# Will see file was not overwritten
cat dir1/fileB
# Happiness is no the absense of problems, it is the ability to deal with them 

#################### Move Directories ####################
# Move directory 
mv dir3 dir4 ../dirX

# Will see that directories were moved with full directory structure
ls -R ../dirX

# Move directory when it already exists in destination directory 
# Command will only work if existing diretory in destination is empty 
mv dir5 ../dirX

# Empty directory 
ls ../dirX
ls ../dirX/dir5
rm ../dirX/dir5/newfile

# Execute again now that it's empty
mv dir5 ../dirX

# Move directory inside another one 
# https://askubuntu.com/questions/210168/moving-folder-and-subfolder-to-another-path
# For those trying to move folder, on Ubuntu using Putty, just use the following command:
sudo mv /fromPath/ /toPath/

# for example:
sudo mv /root/folder1 /home/folder2/

# "/" in the end means you are going to move folder1 inside folder2
# If you don't, you will get "no such file or directory"

# This worked for me
# i.e. not mv src_folder target_folder/
mv src_folder target_folder/src_folder

#################### Rename Files and Directories ####################
# Rename file
mv fact factorial

# Interactive ption to avoid overwriting existing file
mv -i factorial fileB

# Rename directories
mv dirAB

# Rename directory 
# If directory already exists: Dirctory will NOT be renamed and will be moved INTO directory 
# If directory doesn't exist: Directory will be renamed to this 
mv dirXY mydir
mv dir1 dir2

# Rename a file while moving it 
mv fileY dir1/fileYZ  