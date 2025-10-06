# Only pull out valid email address
# Know we wnat Extended regex to say 'one or more, etc'
grep -E '^[A-Za-z].*@[A-Za-z].*\.(org|com|edu|net\tv)' emails.txt 

# Only invalid email address
grep -Ev '^[A-Za-z].*@[A-Za-z].*\.(org|com|edu|net\tv)' emails.txt 

# List of only valid email address 
grep -E '^[A-Za-z].*@[A-Za-z].*\.(org|com|edu|net\tv)' emails.txt > correct.txt