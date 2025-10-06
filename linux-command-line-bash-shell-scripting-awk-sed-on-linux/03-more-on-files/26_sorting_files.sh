#################### Simple Sort ####################
# View file
cat cmdlist

# Sort file
sort cmdlist 

# Contents of file not changed
cat cmdlist

# Reverse sort order
sort -r cmdlist

#################### Numeric Sort ####################
# File with one digit numbers
cat numbers1
sort numbers1 

# File with two digit numbers
cat numbers2
sort numbers2 

# File with one and two digit numbers
cat numbers3
sort numbers3

# Output
# Unexpected output, because ASCII sequence behavior 
# Being sorted as characters not numbers
# Since "1" character comes before "2", "11" will be displayed first, etc
# 11
# 29
# 3
# 44
# 6
# 8

# Override this behavior with -n option
# Numeric sort - recognize numbers as numbers and not as characters
sort -n numbers3

# Sort numbers in descending order
sort -nr numbers3

# Send sorted output to another file instead of displaying on screen
sort cmdlist -o sortedlist
cat sortedlist

# File names can be the same to replace data in file with sorted data
sort cmdlist -o cmdlist 
cat cmdlist 

# Remove duplicate lines from sorted output 
cat file 
sort file1 # sorts all lines
sort -u file1 # display unique lines only 

#################### Sort by Months of Year ####################
# First three characters should be a month in order for command to recognize it as a month 
cat file
# May
# Nov
# Feb
# Jan 
# Dec
# Mar
# Jun
# Apr
# Jul
# Sep
# Aug
3 Oct

# Sort alphabetically 
sort file2

# Sort in order month order 
sort -M fil 2

#################### Data organized in fields and want to sort on different fields ####################
# - t = delimiter, character that separates the fields
# - k = "key" on which to sort, field number sorting has to be done on 

cat students1

# Output 
Raman Kumar Verma    | 12/04/1993 | 84  | Physics  | Bengaluru
Devank Raj           | 11/03/1989 | 99  | Maths    | Delhi  
Shriya Saran         | 09/08/2001 | 101 |Chemistry | Chennai 

# Sort file on 4th field
sort -t"|" -k 4 students1

# Sort file on 5th field
sort -t"|" -k 5 students1

# Sort file on 3rd field
# Using -n option to sort numerically 
sort -t"|" -k 3 -n students1

# Sort file where fields are separated by spaces
cat students 

# Output
# Suresh Physics Bengaluru
# Ramesh Maths Delhi
# Mahesh Biology Chennai
# Rajesh Maths Lucknow
# Nimesh Biology Bareilly 

# Sort on 4th field
# -t option not specified so 1 or more continuous spaces are considered the delimiter 
sort -k 4 students 

# Sort by 2nd field from column 8 to column 11 (year of birth)
cat students1
# Output 
Raman Kumar Verma    | 12/04/1993 | 84  | Physics  | Bengaluru
Devank Raj           | 11/03/1989 | 99  | Maths    | Delhi  
Shriya Saran         | 09/08/2001 | 101 |Chemistry | Chennai 

# Numeric sort of year of birth 
sort -t"|" -k 2.8,2.11 -n students1 # 2.8 = Start on column 11 of 2nd field, 2.11 = Stop at column 11 in 2nd field

#################### Check if file is sorted in default order ####################
# Shows first occurance of disorder with line number and the disorder value

cat file1

# Output
# Chemistry
# Mathematics
# Biology
# Chemistry
# English
# Biology
# Mathmatics
# Physics
# Computer Science
# English
# Hindi
# Biology 

# Check sort 
sort -c file1 

# Output
# sort: file1:3: disorder: Biology

# Use option on sorted file
# Nothing is displayed, meaning file is sorted 
sort -c sortedlist 

# Check if file is sorted on a particular field 
sort -t"|" -c -k 4 students1

# Output
# sort: students1:2: disorder: Devank Raj | 11/03/1989 | 99 | Maths | Delhi 

#################### Provide more than one file to sort command ####################
# View files
cat f1
cat f2
cat f3

# Files are concatenated then sorted collectively
sort f1 f2 f3

# Merge files that are already sorted and get the collective sorted output 
# View files
cat sf1 
cat sf2
cat sf3

# Command sorts faster than previous command
sort -m sf1 sf2 sf3