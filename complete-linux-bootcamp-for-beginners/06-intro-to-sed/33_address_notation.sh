cat lines.txt 

# Print every line in lines.txt
# To supress "streaming out" output of sed using -n option 
sed -n 'p' lines.txt

# Print 4th line
sed -n '4p' lines.txt

# Print everything BUT the 4th line
sed -n '4!p' lines.txt

# Print last line
sed -n '$p' lines.txt

# Print lines 2 - 5
sed -n '2,5p' lines.txt

# Skip line
sed -n '1~1p' lines.txt

# Print every odd line 
sed -n '1~2p' lines.txt

# Start at line 2
sed -n '2~2p' lines.txt

# Print lines 2, then the following 7 lines
sed -n '2,+7p' lines.txt

# Print lines 2, then the following 9 lines
sed -n '2,+9p' lines.txt

# Look for certain things and only print those lines given by regexp
# Print only lines with 't'
sed -n '/[t]/p' lines.txt

# Print only lines with 't' at the beginning
sed -n '/^t/p' lines.txt