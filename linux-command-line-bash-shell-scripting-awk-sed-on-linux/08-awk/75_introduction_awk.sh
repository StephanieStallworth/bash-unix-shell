#################### Basic awk ####################
# View file
cat empdata 

# No selection criteria
# Print all lines of the input data 
awk '{print}' empdata 

# Provide selection criteria
# Print only lines that contain pattern 
awk '/London/{print}' empdata 

# Do not specify command (default will be print)
# Also prints only lines that contain pattern 
awk '/London/' empdata 

# file is unchanged
cat empdata 

# Save output to another file 
awk '/London/' empdata > newfile
cat newfile 