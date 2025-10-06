#################### Test only  ####################
# Test for existance of file named "foo"
[ -e foo ] # square bracket notation with spaces! 

# Evaulated with a zero exit status, meaning file exists  
echo $?

# File is a directory 
[ -d foo ]

# File is a regular file 
[ -f foo]

#################### Combine test with if statement ####################
# If statement returns exist status of 0
# 'foo exists'

if [ -e foo ]
> then
> echo 'foo exists'
> else
> echo 'foo not found'
> fi # if spelled backwards, end of an if statement 

# If statement returns exist status of 1
# foo not found

if [ -e bar ]
> then 
> echo 'foo exists'
> else
> echo 'foo not found'
> fi # if spelled backwards, end of an if statement 

#################### One-line if statements ####################
# Each part is a separate statement, can put entire if contruct on a single line 
if [ -e bar ]; then echo 'foo exists'; else echo 'foo not found'; fi
if [ -e foo ]; then echo 'foo exists'; else echo 'foo not found'; fi

#################### See all tests ####################
man test 