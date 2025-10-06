# See default value of umask on system 
# 0002 
umask 

# Output 
# 0002  
# Left most bit is a "sticky" bit
# Default file permissions: 666 - 002 = 664
# Default directory permissions: 777 - 002 = 775

# Create new file and directory to confirm 
trouch file1
mkdir dir1
ls -l

# Change umask value
umask 022

# Confirm change
# Now Default file permissions: 666 - 022 = 644
# Default directory permissions: 777 - 022 = 755  
umask

# Create new file and directory to confirm
touch file2
mkdir dir2
ls -l 