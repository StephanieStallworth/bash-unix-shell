#################### Redirect Standard Output of cat command ####################
# cat command reads from Standard Input and writes to Standard Output 
# Will wait for you to type text with Keyboard (Standard Input)
# Then by default will output to the terminal (Standard Output)
# Lastly, type CTRL + C to tell cat to stop listening and get the terminal back

# Default Standard Output 
cat 
meow
# Output 
# meow # CTRL + C 

# Tell it to put Data Stream 1 (Standard Output) into output.txt 
cat > output.txt
Linux is Amazing # CTRL + C to stop Standard Input 

# Won't see any output to the terminal
# But will now see output in output.txt 
cat output.xt

# Redirection by default will remove everything a file before writing to it, "truncation"
# So Linux will empty output.txt THEN write "wow!" to it 
cat 1> output.txt
wow! # CTRL + C

# Write to file without truncating it first (append to file)
cat 1>> output.txt 
Linux is amazing! # CTRL + C 

# Also works if omit the 1 as Standard Output is assumed
cat >> output.txt
Linux is very amazing! # CTRL + C