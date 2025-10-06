# Look for all files with modification date of Aug this year in any file ending with dir.txt
grep 'Aug' *.dir.txt

# Ignore case
grep -i 'aug' *dir.txt*

# Reverse the search
# All entries that DON'T have a modification date of Aug this year
grep -i 'aug' *dir.txt*

# Can combine swtiches
grep -vi 'aug' *dir.txt*

# Only give the count of entries that match 
grep -ic 'aug' *dir.txt*