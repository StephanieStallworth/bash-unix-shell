#################### awk with BEGIN and END Blocks to perform computations ####################
# Create header section and footer for report  
awk 'BEGIN { print "\t...Employee Details..."}
> { print $0}
> END { print "\t...End of Report..."}' empdata 

# Count total number of employees and display at the end section 
# count is a user defined variable and is being incremented by one each time a line is processed
# "++" is the increment operator so count++ expression means count = count+1
# User defined variables are intialized with value of zero so we don't have to worry about the initial value of count 

awk 'BEGIN { print "\t...Employee Details..."}
> { count++; print $0}  
> END { print count, "employees"}' empdata 

# Can do the same using the built in variable NR
awk 'BEGIN { print "\t...Employee Details..."}
> { print $0}  
> END { print NR, "employees"}' empdata 

# Count variable is useful when we have to count records selectively
# Count the number of developers and add to the end  
awk '$4=="Developer"{dcount++} # When 4th field is developer, the variable dcount is incremented by 1 so at the end dcount gives us count of developers 
> { print $0}
> END { print dcount, "developers"}' empdata 

# Count developers and webmasters also
# Print totals of both at the end 
awk '$4=="Developer"{dcount++}  
> $4=="Webmaster"{wcount++}
> { print $0}
> END { print dcount, "developers", wcount, "webmasters"}' empdata 

# Add salaries of all teachers and display at end
# sum is a user defined variable and we are adding the value of 3rd field 
# "+=" is the update assignment operator
# So expression "sum+=$3" actually means "sum = sum + $3"
awk '{sum+=$3; print $0}
> END {print sum}' teachers 

# Divide sum by built in variable NR to get average salary
awk '{sum+=$3; print $0}
> END {print sum/NR}' teachers 

# Count teachers with salaries more than 5000
awk '$3>5000{count++}
> {print $0}
> END {print count }' teachers 

#################### awk with BEGIN block to set separator variables ####################
########## Set Input FIELD Separator ##########
# Can use -F option to specify input separator variable
awk -F"|"  '{print $1, $4}' data.txt 

# Instead of using -F option can set the FS variable in the BEGIN section
awk 'BEGIN {FS="|"}
> {print $1, $4}' data.txt

########## Set Input and Output FIELD Separator Variables ##########
# In the print statement, items that are separated by commas are printed in the output separated by the output field separator
# The output field separator is by default a blank, can change it inside BEGIN section 
# Change the Output Field Separator to a colon 
awk 'BEGIN {FS="|"; OFS=":"}
> {print $1, $4}' data.txt

########## Set Input and Output RECORD Separator Variables ##########
# By default the Input record separators are new line character, so each line in the input is considered a record
# At times we might need to change the Input Record Separator, for example, when records are present across multiple lines instead of a single line 

# Each FIELD of a record is a new line
# and RECORDS are separated from each other by empty lines 
cat address.txt

# Output 
# Shriya Srivastava
# #12, Street 12
# Bangalore

# Devank Srivastava
# #17, Street 17
# Delhi

# Parul Saxena 
# #61, Street 9
# Agrea 

# Set FIELD Separator as new line and the RECORD Separator as an empty string 
awk 'BEGIN {FS="\n"; RS=""}
> {print $1, $3}' address.txt

# Set variable OFS also (Output FIELD Separator) instead of the default space 
awk 'BEGIN {FS="\n"; RS=""; OFS="@"}
> {print $1, $3}' address.txt

# Set variable ORS (Output RECORD Separator) instead of the default new line
awk 'BEGIN {FS="\n"; RS=""; OFS="@"; ORS="|"}
> {print $1, $3}' address.txt