#################### Line Addressing ####################
# View file
cat data.txt

# Apply replacement to only 4th line
sed '4s/number /#/' data.txt

# Apply substitute command to range of lines 
sed '3,8s/number /#/' data.txt

# Apply replacement to last line only 
sed '$s/number /#/' data.txt

# Apply from line 5 to last line 
sed '5,$s/number /#/' data.txt

# Do not specify address to apply to all lines of the file 
sed 's/number /#/' data.txt

#################### Context Addressing ####################
# View file
cat empdata 

# Replace string 'Developer' to 'Programmer' only on lines that contain the pattern 'London'
# Before the s command have a string enclosed inside slashes, meaning the s command should only be applied to those lines 
sed '/London/s/Developer/Programmer/' empdata

# Replace string 'Linux' with 'Unix' only when the line contains the pattern 'Oliver'
sed '/Oliver/s/Linux/Unix/' empdata 

# Replace string 'Linux' with 'Unix' from the line contains the pattern 'Oliver' to the line that contains 'James'
sed '/Oliver/,/James/s/Linux/Unix/' empdata 

#################### Mix Context + Line Addressing ####################
# Apply from line that contains 'Oliver' to the 10th line
sed '/Oliver/,10s/Linux/Unix/' empdata 

# Plus Operator
# Apply to lines starting from line that contains pattern 'Oliver' and the next 4 lines
sed '/Oliver/,+4s/Linux/Unix/' empdata 