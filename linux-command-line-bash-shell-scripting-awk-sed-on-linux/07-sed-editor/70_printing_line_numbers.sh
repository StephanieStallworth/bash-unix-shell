############## Printing Line Numbers ################
# View file
cat data1.txt

# Print line numbers before actual line
sed '=' data1.txt

# Print line number for lines 2 to 6 in addition to sed printing all lines (with no line numbers)

sed '2,6=' data1.txt

# Print line numbers where the string 'Linux' occurs in addition to sed printing all lines (with no line numbers)
sed '/Linux/=' data1.txt

# Print line numbers where the word 'Linux' occurs
# Supress default printing of all the lines by sed command
sed -n '/Linux/=' data1.txt

# Print line numbers where 'Linux' occurs AND the actual line by adding p command
sed -n '/Linux/{=;p}' data1.txt

# Print total number of lines in file by displaying line number of last line
sed -n '$=' data1.txt