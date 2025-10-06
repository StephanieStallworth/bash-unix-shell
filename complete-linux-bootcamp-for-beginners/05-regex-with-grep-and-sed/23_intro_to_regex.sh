# Can redirect this output to a file
# then send this file to grep 
ls - l/bin > bindir.txt 

# Find all hypens 
grep '-' bindir.txt # always put patterns in single quotes, then tell where grep to look  

# Only find hyphens that occur as the first character in a line
# Anchor pattern to beginning of line with "^" symbol
grep '^-' bindirt.txt

# Look for all cases where line ends with 'e'
grep 'e$' 