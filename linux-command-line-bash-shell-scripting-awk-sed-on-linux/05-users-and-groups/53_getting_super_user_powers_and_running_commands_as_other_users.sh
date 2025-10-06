#################### Super User ####################
# Add new user without sudo
useradd ami
Test
# Output
# useradd: Permission denied
# useradd: cannot lock /etc/passwd; try again later. 

# Add new user with sudo command
sudo useradd amit
# Output
[sudo] password for deepali

# Edit user permissions
# This will execute successfully without asking for password
sudo usermod -c "Devank Sr" dev

#################### Switch to other user ####################
# Switch to user 'dev'
whoami
su dev
pwd # We want the new user's environment, not current environment
exit

# Swtich to new user and get their environment
whoami
su - shriya
pwd # See the user environment is changed
exit

##### Use sudo su to switch to the Root Account in Ubuntu (not recommended) #################
# Switch to root account
sudo su
whoami
pwd #  But environment is not changed

# Switch to root account AND get root environment
sudo su - 
pwd # See that the environment is now changed