# Create new directory in current directory
mkdir dirB

# Make more than one directory
mkdir dirC dirD dirE
ls

# Create new directory inside directory other than current directory
mkdir /home/deepali/Course/dirX # Absolute path 
ls Course

# Make directory tree
# Order is important here, have to create parent dirctory first then sub-directories
mkdir d1 d1/diA d1/d1B
cd d1
ls 

# This will not execute if the two parent directories don't exist
mkdir dir4/dir4A/dir4AB

# Two ways 
# 1. Create parent directory then make the subdirectory
mkdir dir4 dir4/dir4A dir4/dir4A/dir4AB

# 2. Use -p option to create neste
# Don't need to specify the parent directories separately
# If any parent directories are missing, it will create them 
mkdir -p dir4/dir4A/dir4AB

# Creates nested directory
# If directory already exists (dir4) will not display any error
# If directories does not exist, will create them (dir4X, dir4XY)
mkdir -p dir4/dir4X/dir4XY

# mkdir may fail if 
# there is a directory or file with same name 
# or don't have permissions to create directory 