#################### Octal Method ####################
# Set permissions using the octal method
# Owner = Read, Write, Execute
# Group = Read, Write
# Others = Read 
chmod 764 file1

# Set permissions of file
# Owner = Read, Write
# Group = Read
# Others = No Permissions
chmod 640 file2

#################### Symbolic Method ####################
# Give execute permissions to Others
chmod o+x file1

# Take away write perission from Group and Others
chmod go-w file4

# Give execute permission to All
chmod a+x file5

# Assign absolute permissions
# Owner = Read, Write, Execute 
# Group = Read, Write
# Others = Read
chmod u=rwx, g=rw, o=r file7 

# Set same permissions above, but do not give any permissions to Others
# Owner = Read, Write, Execute 
# Group = Read, Write
# Others = None
chmod u=rwx, g=rw, o= file7 # leave value blank after "o="