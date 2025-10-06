#################### Create New Group ####################
# Add new group without Group ID
sudo groupadd marketing
tail -1 /etc/group

# Add new group with Group ID
sudo groupadd -g 2550 web
tail -1 /etc/group

#################### Add Users to Group ####################
########## Add To Web Group ##########
# Add users to group
# Use -a option to append this group to the user's secondary groups (without this option it will remove the existing group user belongs to)
sudo usermod -a -G web amit 
sudo usermod -a -G web anu
sudo usermod -a -G web john

# Verify users were added 
tail -1 /etc/group 

########## Add To Sudo Group ##########
# Add members to sudo group to execute sudo commands
grep sudo /etc/group 

# Add user to sudo group
sudo usermod -a -G sudo john 

# See groups of user
groups john 

# See groups and userid
id john 

########## Modify Group ##########
# View group details 
cat /etc/group  

# Change Group ID 
sudo groupmod -g 2300 tech
cat /etc/group  

# Change Group Name
sudo groupmod -n db dbase # specify new group name, then existing name
cat /etc/group  

########## Delete Group ##########
# Delete group 
sudo groupdel tech 
cat /etc/group