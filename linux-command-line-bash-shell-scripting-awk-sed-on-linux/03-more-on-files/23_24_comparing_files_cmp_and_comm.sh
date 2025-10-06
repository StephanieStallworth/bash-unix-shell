#################### cmp command ####################
# View files
cat file 1
cat file 2

#  First place where the files differ
cmp file1 file2

# Byte numbers where the differences occurs and differing byte values
cmp -l file1 file2 

# Example where there is difference in files
cat file3
cat file2
cmp file2 file3

#################### com command ####################
# Viles
cat file4
cat file5

# Show three columns: 1. lines unique to first file 2. lines unique to second file 3. lines common to both files
comm file4 file5

# Use column number as an option to exclude from output
comm -3 file4 file5 # exclude 3rd column
comm -23 file4 file5 # exclude 2nd and 3rd column
comm -21 file4 file5 # exclude 2nd and 1st column 