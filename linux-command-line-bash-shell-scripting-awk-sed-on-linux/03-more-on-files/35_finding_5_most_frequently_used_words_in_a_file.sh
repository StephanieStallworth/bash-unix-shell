# Original file
cat file5

# Translate all non-alphabetic characters to a new line so we get each word on a separate line
cat file5 | tr -c 'a-zA-Z' '\n'

# Squeeze the new lines
cat file5 | tr -cs 'a-zA-Z' '\n'

# Sort output so all identical words are adjacent to each other
cat file5 | tr -cs 'a-zA-Z' '\n' | sort 

# Use unique option to compress each group of identical words and also get a count to denote frequency of each word
cat file5 | tr -cs 'a-zA-Z' '\n' | sort | uniq -c

# Translate all uppercase letters to lowercase
cat file5 | tr 'A-Z' 'a-z' | -cs 'a-zA-Z' '\n' | sort | uniq -c

# Perform numeric sort on count field
cat file5 | tr 'A-Z' 'a-z' | -cs 'a-zA-Z' '\n' | sort | uniq -c | sort -n 

# Display only the top 5 words most frequently used
cat file5 | tr 'A-Z' 'a-z' | -cs 'a-zA-Z' '\n' | sort | uniq -c | sort -n | tail -5