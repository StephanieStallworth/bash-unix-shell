# View file
cat data.txt

# command is applied to all lines of the file
# Don't provide address to print all lines of the file 
# Will see all lines are printed twoice 
# Once from the p command (printing all lines since no address was specified)
# Then again from the automatic display of the sed command (that displays all the lines)
sed 'p' data.txt

# Specify address to print from lines 2 to 4
# Will see that lines 2 to 4 are printed twice 
# Once from the p command (printing lines 2 through 4)
# And once from the automatic display of sed (which displays all lines)
sed '2,4p' data.txt

# Turn off automatic print of sed using -n option
# Only those lines specified by p command are printed
# Suppressing default output of sed command using '-n' option THEN explicitly print lines using the p command
sed -n '2,4p' data.txt

# Print lines from file where specific pattern occurs
sed -n '/Linux/p' data.txt

# Print lines and line numbers where "Linux" occurs	sed -n ‘/Linux{=; p}’ data1.txt	

# Can use the ! to negate
# Print lines from file that do NOT contain pattern 
sed -n '/Windows/!p' data.txt

# Print last line of file
sed -n '$p' data.txt

# Print multiple lines
# From lines 2 to 7
# then lines 6 to 8
# then lines 10 to end of the file 
sed -n '2,4p
> 6,8p
> 10,$p' data 