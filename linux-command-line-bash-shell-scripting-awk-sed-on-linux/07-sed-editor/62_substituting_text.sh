#################### Input from file ####################
# Replace 1st occurance of  search pattern in each line with no flags
sed 's/Delhi/New Delhi/' data1.txt

# Confirm original file has not been changed
cat data1.txt

# Replace 2nd occrance of search pattern in each line with numeric flag
sed 's/Delhi/New Delhi/2' data1.txt

# Replace all occurances of search pattern in each line with 'g' flag
sed 's/Delhi/New Delhi/g' data1.txt

# DELETE all occurances of search patern in each line
sed 's/Delhi//g' data1.txt

# Save only modified lines to file with 'w' flag
sed 's/Delhi/New Delhi/w file1' data1.txt
cat file1

# To write the whole output to a file (both modified and unmodified lines)
# Need to use the redirction operatpr 
sed 's/Delhi/New Delhi/' data1.txt > file2
cat file2

# Write only modified lines to a file AND the whole output to another file
sed 's/Delhi/New Delhi/w file4' data1.txt > file3
cat file4
cat file3

# Print lines in which replacement has been done
# Use -n option to get the correct output 
sed -n 's/Delhi/New Delhi/p;' data1.txt

#################### Using sed as a filter (piping) ####################
# Take input from another command (sed on right side of pipe)
sort data.txt | sed 's/Delhi/New Delhi/' 

# Send output to another command (sed on left side of pipe)
sort data.txt | sed 's/Delhi/New Delhi/' | head -3