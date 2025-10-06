# View file
cat teachers 

# Perform 2 commands: increase 3rd field by 400 then print the entire line 
# Separting commands by semicolons 
awk '{ $3=$3+400; print $0}' teachers 

# Separate commands on the secondary prompt instead 
awk '{ $3=$3+400
> print $0}' teachers 

# Selection criteria applies to both commands in the curly brackets 
# Provide selection criteria to apply to only lines containing 'London'
# And print only lines containing 'London'
awk '/London/{$3=$3+400; print$0}' teachers 

# Add 400 to only lines containing 'London' but still print ALL lines in the file
awk '/London/{$3=$3+400} # Command 1 selection criteria is London  
> {print $0}' teachers  # Command 2 no selection critiera so applies to all lines 

# Awk reads one line from input data 
# If line contains 'London' add 400 to the 3rd field
# If line contains 'Delhi' change 2nd field to "Bangalore" and add 300 to the 3rd field 
# Then print entire line
awk 'London/{$3=$3+400}
> /Delhi/{$2="Bangalore"; $3=$3+300}
> {print $0}' teachers  