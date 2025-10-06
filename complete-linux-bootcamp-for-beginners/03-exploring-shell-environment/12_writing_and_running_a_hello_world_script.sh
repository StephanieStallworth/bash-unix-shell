#################### Create File #################### 
emacs
emacs hello.sh 

#################### Modify File #################### 
# Have to tell the bash environment what to do with this script when we make it runnable 
# Give the environment an hint of where bash would be found
# That hint would be "SHIFT + Bang" or "Shabang" "#!/" at the top of file 
# Tells the executing environment for the shell where to find bash  

# !/bin/bash 
echo 'Hello World' 

# Change permissions 
# Assign appropriate permissions 
ls -l
chmod 755 hello.sh 

# Typical permissions for scripts
# 755 = exectuable for everyone but editable for me
# 754 = executable and eedtiable for me, executable for my group and only readable for everyone else
# 750 = readable, write, execute for me, group cannot write, and others cannot read, write or execute 
# 700 = executable only for and not readable, writable or execuatable for anyone else 

# Execute script
./hello.sh 