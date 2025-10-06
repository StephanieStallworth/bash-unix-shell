#################### Delete Files ####################
# Remove one file
rm file 1

# Remove multiple files
rm file2 ../data.txt 

# Interactive option to prompt for confimation 
rm -i file3 dir1/file1 

# Will also be prompted before removing files that are "write-protected"
rm fileA 

# Force removal of write protected file 
# Forcibly remove the file without asking 
rm -f fileA

#################### Delete Empty Directories ####################
# Remove empty directories
ls dir3
rmdir dir3 

# rmdir will only remove empty directories
# there is no interactive option for rmdir command, good it only removes empty directories 
# Try rmdir command
rmdir dir4 
ls dir4

# Empty directory 
rm dir4/file

# Try rm command again
ls dir4
rmdir dir4

#################### Delete Non-Empty Directories ####################
# -r will recursively traverse the directories/files and remove them 
# if you use the -i option also, it will ask before deleting each file and directory 
rm -r dir1 