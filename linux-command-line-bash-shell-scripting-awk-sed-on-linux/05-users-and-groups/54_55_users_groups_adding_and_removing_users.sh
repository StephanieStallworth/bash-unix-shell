#################### Add Users ####################
########## Add User Example 1 ########## 
# Add new user
sudo useradd -m -c "Rajveer Singh" -s /bin/bash raj

# Add password for user
sudo passwd raj

# View account in /etc/passwd
tail -1 /etc/passwd 

# Output 
# raj:x:1005:1005:Rajveer Singh:/home/raj:/bin/bash 

# View files in home directory 
# These directories are copied from /etc/skel when you create account with -m option (To create home directory for the user) 
ls -al /home/raj

# View contents of /etc/skel
# If you want other files to be available to a new user's home directory, can add those file to /etc/skel 
ls -al /etc/skel

##### Add User Example 2 ##### 
# Add user 
sudo useradd -m -g dbase -G finance,bengaluru reena   

# Add password for user
sudo passwd reena 

# View user account in /etc/passwd file
tail -1 /etc/passwd

# Output 
# reena:x:1006:2000::/home/reena:

#################### Modify Users ####################
# View current entries 
tail /etc/passwd

# Modify comments for user
sudo usermod -c "Rajveer 90909090" raj 
tail /etc/passwd

# Change primary group for user
sudo usermod -g finance reena 
tail /etc/passwd

# Change username for user 
sudo usermod -l rajveer raj 
tail /etc/passwd

#################### Delete Users ####################
# Delete user 
# Can see user has been removed but home directory has not been deleted 
sudo userdel paru
tail /etc/passwd
ls -l /home/parul 

# Delete user and the user's home directory
sudo userdel -r dev
ls l /home/dev 
# ls: cannot access '/home/dev': No such file or directory 