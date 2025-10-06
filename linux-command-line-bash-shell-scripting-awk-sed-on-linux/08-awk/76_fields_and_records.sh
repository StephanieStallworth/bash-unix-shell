#################### awk fields and records #################### 
#  View file
cat empdata 

# Print all lines fully 
awk '{print}' empdata
awk '{print $0}' empdata 

# Print select fields
# Print 1st field from each line 
awk '{print $1}' empdata 

# Print 3rd field from each line 
awk '{print $3}' empdata 

# Print 3rd and 4th fields 
awk '{print $3,$4}' empdata 

# Print 3rd and 4th fields without comma separation 
# Fields will be glued together in the output 
awk '{print $3 $4}' empdata 

# Print fields in different order 
# Print 4th, 1st, and 2nd fields 
awk '{print $4,$1,$2}' empdata 

# Print text with the fields
awk '{print $1, "works on", $3}' empdata 

#################### awk with pipes ####################
# Display 1st field of the who command output 
who | awk '{print $1}'

# Print 1st field of sort command output 
sort empdata | awk '{print $1}' 

# Runs list long format command and prints last and first field separated by a tab 
# Print file name, tab, and first field of long listing command output 
ls -l | awk '{print $NF, "\t", $1}'  

# Apply only if current line number is not one, effectively excluding the 1st line
# Provide selection criteria before the command
# NR = built in operable that represents the current line/record number
ls -l | awk 'NR!=1{print $NF, "\t", $1}' 

#################### awk with grep ####################
**cat /mnt/data/user/storage/test.csv|grep -v "2023-0\[4|5|6]"|grep -v "SAVE"|grep -v "save"|awk -F',' '{print $2}'|grep -v "sum_in_tb"|awk '{s+=$1} END {print s}'** = Find large tables