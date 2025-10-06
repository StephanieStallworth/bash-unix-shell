#################### Read Command ####################
# View files
cat empdata 
cat file 1

# Insert text of file1 after line 5 in empdata 
sed '5r file1' empdata

# Insert text of file1 after last line in empdata 
sed '$r file1' empdata

# Insert contents of file one after line containing 'Berline' in empdata 
# If there are multiple occurances of the pattern, contents will be inserted after each line containing pattern 
sed '/Berlin/r file1' empdata

# Use read and delete to replace placeholder lines in a file
# After line containing 'ItemsList', insert 'grocery' and delete the line containing 'ItemsList'
sed '/ItemsList/{ 
> r grocery
> d
> }' note.txt

# After line containing 'ItemsList', insert contents of another file and delete the line containing 'ItemsList'
sed '/ItemsList/{
> r vegetables
> d 
}' note.txt