#################### Built In Variables #################### 
# Print line using built in variables  
# Print line number and then entire line using built in variables
awk '{ print NR, $0}' teachers

# Print range of lines using variable NR in selection criteria
# Select line number and then entire line when record number (line number) is from lines 2 to 5
awk 'NR=2,NR=5{ print NR, $0}' teachers

# Use OR operator 
# Apply command when record number is either 2 OR 5
awk 'NR=2||NR=5{ print NR, $0}' teachers

# Apply from line 2 to line containing the first occurance of 'Delhi '
awk 'NR=2,/Delhi/{ print NR, $0}' teachers

# Apply to line if record number is not 1
# Effectively applies to all lines except for the 1st line
awk 'NR!=1{ print NR, $0}' teachers

# Print details of only teachers whose salary greater than 50000
# Print lines where 3rd field is greater than 5000
awk '$3>5000{ print NR, $0}' teachers

#################### User Defined Variables ####################
#  Add together fields to create total column
# Print the entire line and the new total column 
awk '{total=$2+$3=$4; print $0, total}' students

# Print percent also 
awk '{total=$2+$3=$4; print $0, total, total/300*100}' students

# Use printf for more control over printing
# Specify the format in "" including a new line
awk '{total=$2+$3=$4
> printf("%s %d %.2f\n", $0, total, total/300*100)}' # students # first print $0 which is a string, total which is a dollar value, then percentage which is a float

# Parenthesis of printf are optional in awk, get the same output without them 
awk '{total=$2+$3=$4
> printf"%s %d %.2f\n", $0, total, total/300*100}' # students # first print $0 which is a string, total which is a dollar value, then percentage which is a float