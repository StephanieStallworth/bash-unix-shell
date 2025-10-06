#################### awk file1 - no addresses ####################
# View awk file
cat file1.awk

# Output 
# {
# $2=$2+5
# $3=$3+10
# print $0 
# }

# Use commands from awk file1 to each line in input file
awk -f file1.awk students

#################### awk file2 - with addresses ####################
# View awk file
cat file2.awk

# Ouput 
# /London/{print} 
# /Berlin/{print}

# Use commands from awk file to only lines that contain specified pattern in the input file
awk -f file2.awk teachers 

#################### awk file2A - addresses with no command specified ####################
# View file
cat file2A.awk

# Ouput 
# /London/ # omitting {print} since it is already the default command
# /Berlin/

# Use default command from awk file to only lines that contain specified pattern in the input file
awk -f file2.awk teachers 

#################### awk file3 - multiple commands in curly braces ####################
# View file
cat file3.awk

# Ouput 
# /London/{$3=$3+100; print} 
# /Berlin/{$3=$3+300; print} 

# Add 100 to 3rd field of each line contaning 'London' then print line 
# Add 300 to 3rd field of each line contaning 'Berlin' then print line 
awk -f file3.awk teachers 

#################### awk file3A - multiple commands in curly braces and print all lines after ####################
# View file
cat file3A.awk

# Ouput 
# /London/{$3=$3+100; print} 
# /Berlin/{$3=$3+300; print} 
# {print} 

# Add 100 to 3rd field of each line contaning 'London' then print line 
# Add 300 to 3rd field of each line contaning 'Berlin' then print line 
# Then print EACH line of the file
awk -f file3A.awk teachers 