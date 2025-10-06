#################### Hard Links ####################
# View contents of current directory 
ls -li 

# Create hard link
ls studentresults sr # sr = linkname

# Shows both files sr and studentresults 
# But only one physical file exists, sr is just another name for the file
# inode number, sizes, and contents of hardlinks are the same because phyiscally they are the same file
# Will notice that the link number increased, each file starts one link which is the file itself
# Two links means an additional link was added
ls -li 

# Create hardlink in another directory 
ln studentresults ../d2/sres 
ls -li ../d2

# Create hardlink without specifying link name
# So name of link will be the name of the original file
ln studentresults ../d3
ls -li ../d3

# View all hardlinks
# inum option finds files by inode number, because inde number of all hardlinks are the same
find ~ -inum 407585 

# Any changes to the origina lfile or any of the links will be reflected in all the links
# So if you want to maintain several copies of the same file on they system but don't want to create phyiscal copies, can create hardlinks

# Removing any file/link just breaks the link, physical file still exists until the last link is removed
# To physically remove a file, have to remove all of its hard links
# File will be phyiscally removed from the system only when the last link is removed

# Remove link
rm ../d2/sres

# Remove original file
# Don't see 'studentresults' filename anymore, but the file was not removed physically
# The file still exists physically since there are links to it and we can still access it through the links
rm studentresults

# Removing the remaining links
# NOW the file is phyiscally removed
# File is phyiscally removed from the system when its link count becomes zero 
rm sr ../d3/studentresults

# Create links for multiple files in current directory into another directory 
# Link names not specified so original file names will be used
# Can use wildcards while creating links for multiple files
ln file1 file2 file3 ../d2 
ls -li ../d2

# Use -f option to forcibly create link and overwrite if file already exists 
ln file4 ../d2/f4 # name of link 
ln -f file4 ../d2/f4

# Create backup file before creating link 
ln file5 ../dir2/f5 
ln --backup file5 ../dir2/f5 
ls -l ../d2 

#################### Symbolic Links ####################
# Create symbolic link
ls -li
ln -s teachersdata td 

ls -li

# Filetype of symbolic links are represented with "l", indicates that td is a symbolic link and not an ordinary file
# "td -> teachersdata" shows that td points to this file teachersdata
# Notice size of link is smaller than teachersdata file
# They are different physical files and can see this with their different inode numbers
# link has full set of open permissions 
# Link count is NOT increased for the original file (link increases only when we define hard links)
# 407278 lrwxrwxrwx 1 deepali deepali 12 Dec 29 06:53 td -> teachersdata 
# 407584 -rw-rw-r-- 1 deepali deepali 61 Dec 29 06:45 teachersdata 

# Display contents
cat td

# Output
# Contents of the target file (teachersdata)
# Whatever actions we perform on the link is actually done on the target file that it points to 
# Ramesh 1278
# Suresh 1123
# Mahesh 8898
# Nilesh 9890
# Anish 9091

# Create another symbolic link
cd ../d2
ls -s ../d1/teachersdata tdata 
ls -li 

# Delete first symbolic link
rm ../d1/td 

# Original file still exists 
ls -li ..d1

# If you delete the original file, then the symbolic link will because useful as it will point to a non-existant file
# Such symbolic links are called "Dangling Symbolic Links"
rm ../d1/teachersdata 

# Will see dangling symbolic link highlighted in red 
ls -li 

# Create symbolic link to directory 
# Note: Can NOT create hard links to directory only soft links
ln -s ~/Course1/Exgrep/ grep  

# When we move to grep directory we are actually in the target dirctory (~/Course1/Exgrep)
cd grep 