#################### Assign numeric variable ####################
a=5
echo a # prints the letter "a"
echo $a # print value of the variable a 

#################### Empty Variable ####################
# unset when we're done with variable 
unset a

# If you reference variable again, it will print a blank line because an empty variable 
# be careful with this! 
echo $a 

#################### Variable Expressions ####################
a=1

echo $((a)) 

# Returns same as echo$a but "(())" constructs are important because we can evaluate them as expressions
# evaluate expressions and mutate value of variable 

# Evaluate expression with variable 
echo $((a + 1)) 

# Better way because you can evaluate as an expression
echo $((a))

# Evaluate expression with variable and assign to new variable 
# Mutate value of a variable
a = $((a+1)) # no spaces around equal sign
echo $a 

## Assigning variable as return value of a command 
unset a # remove variable assignment
a=$(ls -la) # evaluates ls -la and assign it to a variable
echo $a 

#################### String Variables ####################
# String with spaces need to be enclosed in quotes
# Could use single or double quotes most of the time 
echo this is a string
a='this is a string' 

# HOWEVER, if we want a variable to be interpolated into a string using $ syntax, string must be enclosed in double quotes
# Single quotes would not work for this 
b = 'a is $a' would just print literal string "$a", but the intent is to print out the VALUE that is currently in a

# Double quotes will interpolate the $ sign variable syntax into the value of the variable 
a="this is a string" 
b = "a is $a" # Would plug in the value of $a variable 

#################### Built-In Shell Variables ####################
# example.sh
python test.py $*
echo "$DATE Generated job with params: $*" >> ./test.log 