#################### Pipe Examples ####################
### sort command ###
# Cut first field from file
cut -d"|" -f1 students 

# Sort it 
cut -d"|" -f1 students | sort

# Display only last 5 lines of the the output
cut -d"|" -f1 students | sort | tail -5

# Redirect output to a file
cut -d"|" -f1 students | sort | tail -5 > fileX

#### wc command ####
# Count users logged in by counting lines in command output
who | wc -l 

# Display only user names, specifying space as the delimiter
who | cut -d" " -f1

### date ###
# Display only day of week
date | cut -d" "  -f1

# Display only month
date | cut -d" " -f2