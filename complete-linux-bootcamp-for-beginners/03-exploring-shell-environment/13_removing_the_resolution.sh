# Try to move file into /usr/local/bin
# can't move it, because even if you're running as admin rights, you're not running as root 
mv hello.sh /usr/local/bin 

# In order to run as root or super user need to use "sudo" ("super user do")
# Will ask for password if you haven't used sudo yet
sudo mv hello.sh /usr/local/bin 

# Can now execute 
hello.sh