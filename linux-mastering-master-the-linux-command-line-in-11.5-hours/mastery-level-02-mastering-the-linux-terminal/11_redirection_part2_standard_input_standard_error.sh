#################### Redirect Standard Error ####################
# Default Standard Error Data Stream
cat -k bla 

# Redirect Standard Error 
cat -k bla 2> error.txt
cat error.txt 

# Append Standard Error to append to whatever is already in error.txt
cat -k bla 2>> error.txt

#################### Redirect Standard Error AND Standard Output ####################
# Redirect Standard Error and Standard Output at the same time 
cat 1>> output.txt 2>> error.txt # 1 = Stanadrd Output, 2 = Standard Error
Linux is Amazing! # CTRL + C

# Can omit the 1 for Standard Output as a shortcut 
# But still need the "2" because that shortcut isn't available for Standard Error 
cat >> output.txt 2>> error.txt 
Linux is very Amazing! # CTRL + C

#################### Redirect Standard Input ####################
# Create input file we want to redirect Standard Input to point to 
cat > input.txt
Hello World! # CTRL +  C 

# Redirect Standard Input from input.txt
# Then write output to Standard Output (terminal default) 
# 0 means Standard Input Stream 
cat 0< input.txt

# OR Can omit the 0 because Standard Input is the only way you can input 
cat < input.txt 

#################### Redirect Standard Input AND Standard Output ####################
# Read Standard Input from input.txt
# Redirect Standard Output to hello.txt
# Redirects standard input from the default (keyboard) to input.txt and redirects standard output from the default (terminal) to hello.txt 
cat < input.txt > hello.txt
cat 0< input.txt 1> hello.txt

#################### Redirect Standard Input AND Standard Output to another terminal ####################
# Everything in Linux is treated as a file, even terminals 
# Open another terminal window CTRL + ALT + T 
# See where terminal is located in the file system
tty 
# Output 
# /dev/pts/1

# Redirect Standard Output to this terminal
# Useful when passing data around your entire computer, even over computer networks 
cat < input.txt > /dev/pts/1