#################### cut with -c option ####################
# Example File 1
# Data is organized in "fixed length" lines (tabular format)
# Name columns 1-10, DOB columns 12-19, subject 29-37
cat students
Raman    12/04/93    84    Physics    Bengaluru
Devant   11/03/89    93    Maths      Delhi 
Shirya   09/08/91   101    Chemistry  Chennai 

# Cut 5th character from each line
cut -c5 students

# Specify different columns
cut -c22,23,24 students

# In each line cut characters 12-20 
cut -c12-20 students

# Cut multiple ranges of columns (each character is a column in this context)
# Better for fixed length lines 
cut -c12-20, 28-37 students

# Omit second number in last range
cut -c12-20, 28- students

# Cut 1st column to column 20, column 28 to the last column 
cut -20, 28-

# cut Columns from 1 to 10
cut -c-10 students

# Cut from 29th column to last column
cut -c29- students

#################### cut with -d and -f option ####################
# Example File 2
# Data is organized in fields that are separated by delimiter character "|"
cat students 1

# Raman Kumar Verma | 12/04/93 | 84 | Physics | Bengaluru
# Devank Raj | 11/03/89 |93 | Maths | Delhi
# Shriya Saran | 09/08/91 | 101 | Chemistry | Delhhi

# Cut columns with a delimiter
# Have to use -d and -f options to extract fields
# Cut 1st field from file
cut -d'|' -f1 students1

# Cut 2nd field from file
cut -d'|' -f2 students1

# Cut 1st and 4th fields
cut -d'|' -f1,4 students1

# Specify range of fields
# Cut from 1st to 4th field 
cut -d'|' -f1-4 students1

# Specify multiple ranges

# Omit number in range
# Cut 1st field to 3rd field
cut -d'|' -f-3 students1

# Cut from 3rd field to last field 
cut -d'|' -f3- students1

# Change delimiter in the output 
cut -d'|' -f1,3,4 students1 --output-delimiter='##'
cut -d'|' -f1,3,4 students1 --output-delimiter=':'

#################### paste with -d and -f options ####################
# View files
cat 1
cat 2
cat 3

# Join files verically with default delimiter Tab
paste f1 f2 f3

# Output
# Suresh Physics Bengaluru
# Ramesh Maths Delhi
# Mahesh Biology Chennai
# Rajesh Maths Lucknow
# Nimesh Biology Bareilly 

# Specifying delimiter 
paste -d'|' f1 f2 f3

# Output 
# Suresh|Physics|Bengaluru
# Ramesh|Maths|Delhi
# Mahesh|Biology|Chennai
# Rajesh|Maths|Lucknow
# Nimesh|Biology|Bareilly 

# Specifying multiple delimiters
# Paste all the lines of a file into a single line (transpose) with delimiter 
paste -d'|-' f1 f2 f3

# Output 
# Suresh|Physics-Bengaluru
# Ramesh|Maths-Delhi
# Mahesh|Biology-Chennai
# Rajesh|Maths-Lucknow
# Nimesh|Biology-Bareilly 

#################### paste with -s, -d and -f options ####################
#### Single delimiter ####
# View file
cat f1 

# Output 
# Suresh
# Ramesh
# Mahesh
# Rajesh
# Nimesh 

# Paste lines of this file together separated by tabs (transpose)
paste -s f1

# Output 
# Suresh Ramesh Mahesh Rajesh Nimesh 

# Use a different delimiter 
paste -s -d'|' f1

# Output
# Suresh|Ramesh|Mahesh|Rajesh|Nimesh 

#################### Multiple delimiters ####################
#### Example 1 ####
# Concatenate lines of the file in a specified manner 
# Data on each student spread across 4 separate lines 
cat students2

# Output 
# Raman Kumar Verma
# 84
# Physics
# Bengaluru
# Devank Raj
# 93 
# Maths
# Delhi
# Shriya Saran
# 101
# Chemistry
# Chennai 

# Want data to be on the same line 
# Using 4 delimiters, that are applied in a circular manner 
# Paste all lines into a single line with multiple delimiters and end with a new line 
paste -s -d'|||\n' students2

# Output 
# 1st and 2nd lines, 2nd and 3rd lines, 3rd and 4th lines: joined by vertical bar
# 4th and 5th lines: delimiter is new line 
# 5 and 6th joined by vertical bar, and so on 
# Raman Kumar Verma|84|Physics|Bengaluru
# Devank Raj|93|Maths|Delhi
# Shriya Saran|101|Chemistry|Chennai 

#### Example 2 ####
# Data on each student spread on 3 lines, want on single line 
cat students3

# Output 
# Raman Kumar Verma
# Physics
# Bengaluru
# Devank Raj
# Maths
# Delhi
# Shriya Saran
# Chemistry
# Chennai 

# Paste using 3 delimiters, 2 dashes and 1 new line 
paste -s -d'--\n' students3

# Output 
# Raman Kumar Verma-Physics-Bengaluru
# Devank Raj-Maths-Delhi
# Shriya Saran-Chemistry-Chennai 