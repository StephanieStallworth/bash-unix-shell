#################### Moving Current Working Directories ####################
# Print working directory ("Working Directory" is the directory we are currently in )
pwd

# Make another directory the current working directory 
cd /home/deepali/Course # absolute path name

# Check
# "~" means home directory 
# Usually prompt is configured to display name of current working directory 
pwd

# See files and directories present inside of current working directory
ls 

# Go inside of subdirectory
cd ./dirA # relative path name 
cd dirA # omit './' because already implied when you give directory name 

# See directories
ls 

# Move again
# If you don't specify pathname for file or directory, path of current working directory is assumed 
cd d1 

#################### Parent Directories ####################
# Change current working directory to parent directory
cd .. # relative path name ".." means parent directory

# Move up again
cd .. 

# Go more than one level up 
cd ../../..

# Move around more
ls 
cd Course
cd dir1
cd ../dir2

#################### Shortcuts ####################
#### No commands #####
# cd command with no arguments to move to your home directory 
cd

#################### User Home directory with ~ ####################
# Move to your home directory
cd ~ 

# Move to folder within your home directory
cd ~/Documents

# Move to home directory of another user
cd ~suresh

# Move to directory within someone else's home directory
cd ~suresh/Documents 

### Go back to previous working dirctory ####
cd - 

#################### Go to root directory ####################
cd / 

#################### Directory names with and without ending slash ####################
# Forward slash is a directory separated in Linux
# So directory name can end with slash or you can also omit the slash
# Ending slash is not compulsory but helps distinguish between file names and directory names 

cd Course

cd Course/