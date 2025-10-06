#################### Redirection ####################
##### Output Redirection ##### 
# ">" redirects from whatever I'm doing to something else
cat > file # "end of file" is CTRL + D

##### Input Redirection #####
# Takes what normally would be the input and sends it into wc utlility  
wc -w  < file1 

# take input from file1 and redirect it to wordcount file
wc -w < file1 > wordcount

cat wordcount

#################### Piping ####################
# Using piping to go from one utiltiy or program to another 
# Gives us the same thing above without having to create another file
ls -l | wc -l # takes output of ls -l and pipes it into wc -l