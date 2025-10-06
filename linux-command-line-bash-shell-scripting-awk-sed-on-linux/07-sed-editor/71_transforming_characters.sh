#################### y command (trasform) ####################
# View file
cat empdata

# Replace occurances of . with - AND | with %
sed 'y/.|/-%/' empdata 

#  Replace only in lines 3 to 8
sed '3,8y/.|/-%/' empdata 

# Replace only in lines that contain 'London'
sed '/London/y/.|/-%/' empdata 