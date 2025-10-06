#################### Creating files with different groups ####################
# View logged in user's group
id 

# Create new files
# See that group owner is user's primary group 
touch file file2

# Change group and create new files
# Will see the group owner of these files is the new group 
newgrp db 
touch file3 file4
ls -l 

# Go back to primary group and create one more file
# Will see group owner of file is the Primary group 
newgroup 
touch file5
ls -l

#################### Change ownership of a file with chown ####################
# View files
ls -l

#  Change ownership to another user
sudo chown deepali file 
ls -l

# Change both Owner and Group Owner of a file
sudo chown amit:db file2
ls -l

# To change only Group Owner of file 
sudo chown :marketing file3
ls -l 

####### Change Group Owner of a file with chgrp #######################
# Change only the group 
sudo chgrp marketing file4
ls -l 