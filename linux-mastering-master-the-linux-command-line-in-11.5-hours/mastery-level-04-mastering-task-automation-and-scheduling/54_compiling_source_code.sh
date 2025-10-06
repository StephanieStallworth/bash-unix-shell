#################### Modify source code file for command ####################
# See this is "XZ compressed data"
file coreutils-8.28.tar.xz 

# Unpack it 
tar -xJf coreutils-8.28.tar.xz 

# Move to this directory 
cd coreutils-8.28

# Navigate to where the source code is kept 
cd src

# View contents 
# ".c" means these files are written in the C programming language 
ls | grep ls 
ls | less 

# Edit ls command source code file
# In C programming there is always a function called the main function 
# CTRL + SHIFT + _ 1443 to jump to main function and make edit 
# Then CTRL + o to write change, CTRL + x to exit 
nano ls.c 
printf("Hello there you beautiful people \n");

#################### Install and configure GNN compiler ####################
# Tell computer look on the software repos available for Ubuntu 
# Then download and install the GNU C Compiler or GCC package  
sudo apt-get install gcc 

# Configure installation to specific machine 
# Configure GCC to make sure that when it compiles the software we tell it to
# It will do it in a way that is appropriate for our computer's architecture 
cd ..
bash configure 

# Creates a new file called the "make file" that is responsible for the installation of this new software package 
# To make make file work, we need a new command called make that we need to install 
sudo apt-get install make 

#################### Use make command to compile into machine code and install that code ####################
# Rum the make command
# Will compile all of the C files that have not been compiled recently
# Since this is the first time running, effectively all of the C code (including the updated ls file) 
# Compiles it all into machine, binary code, that can be ran on the computer 
make 

# Install each different pieces software that came with version 8.28 of the core utils package
sudo make install 

# Now run ls command, will see modified behavior of command 
ls 

#################### Make Additional Changes ###################################
# Once we configure GCC for the package, really fast to make edit thereafter 
# Make command knows it needs to compile code that is affected by the change
# Not the whole package, which was new to the system the first time we did it  

# To change back, reedit source code file 

# Then recompile with "make"
# This time, make is just compiling the ls command because it notices that is what is different 
# Then reinstall with "make install" 
cd ..
make && sudo make install 