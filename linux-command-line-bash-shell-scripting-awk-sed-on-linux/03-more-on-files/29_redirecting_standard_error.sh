# No redirection 
# Will show both Standard Ouput and Standard Error on screen
cat f1 f2 f3 f4 f5

# Redirect Standard Output 
# Normal output is redirected to file, but error messages still shown on the screen
cat f1 f2 f3 f4 f5 > outfile

# Redirect Standard Output to file and redirect Standard Error to another file 
cat f1 f2 f3 f4 f5 > outfile 2> errorfile

# Order is NOT important, can redirect error messages first then the normal output 
cat f1 f2 f3 f4 f5 2> errorfile > outfile
cat f1 f2 f3 f4 f5 2> errorfile 1> outfile

# Send both normal output and error messages to the same file
cvat f1 f2 f3 f4 f5 &> bigfile

# Redirect Standard Output to file1 and redirect Stanard Error also to the same file
cat f1 f2 f3 f4 f5 > file1 2>&1

# Redirects Standard Error to file2 and redirect Standard Output to the same file
cat f1 f2 f3 f4 f5 2> file2 1>&2

# Totally ignore the error messages
# Not displayed on the screen or stored in a file
cat f1 f2 f3 f4 f5 2> /dev/null 

# Dump the output of the command 
cat f1 f2 f3 f4 f5 > /dev/null 

# In find command, may get many permission denied errors
find /home -name "*.cpp"

# Can ignore these errors by redirecting them to the null file
find /home -name "*.cpp" 2> /dev/null