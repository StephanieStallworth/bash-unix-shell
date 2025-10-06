# Find first 3 digits in phone number
# Optionally enclosed by parenthesis, optionall followed by dash 
grep -E '\(?[0-9][0-9][0-9]\)?\-?' ~/phones.txt

# Shorter way 
grep -E '\(?[0-9]{3}\)?\-?' ~/phones.txt

# Specifying more characters 
grep -E '\(?[0-9]{3}\)?\-?[0-9]{3}\-[0-9]{4}' ~Invalid date

# Anchor expression to end of line 
# Could not grep beginning of the line because names are the beginning or tabs, safer to grep the end 
grep -E '\(?[0-9]{3}\)?\-?[0-9]{3}\-[0-9]{4}$' ~/phones.txt

# Redirect output of grep to new file
grep -E '\(?[0-9]{3}\)?\-?[0-9]{3}\-[0-9]{4}$' ~/phones.txt > correctphones.txt

# Check
cat correctphones.txt