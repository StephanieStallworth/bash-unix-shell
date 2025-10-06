#################### Wildcards with List Command ####################
########## ? and * ##########
# List files with 1 character
ls ?

# List files with 2 characters
ls ??

# List files with 3 character files
ls ??

# List files with 3 or more characters 
ls ???*

# List all files with any characters 
ls *

# List all files that end in .cpp
ls *.cpp

# List all files that star with "t" and end in ".cpp"
ls t.*.cpp

# List all files starting with "t" followed by any single chracter and ending in ".cpp" 
ls t?.cpp

# List all files that start with with "e","q", or "f" and end with ".cpp"
ls [tqf]*.cpp 

#################### Character Classes ####################
# Negate character class
# List all files that DON'T end with "a", "q" or "s"
ls *[!aqs]

# Range in character class
# List filesl that start with any letter from a to p and end with any digit from 5 to 9
ls [a-p]*[5-9]

# Named character classes
# List all files that start with an uppercase letter and end in a digit 
ls [[:upper:]]*[[:digit:]]

# Negate character class
# List all files that start with an uppercase letter and DON'T end ina digit
ls [[:upper:]]*[![:digit:]] # notice explamation point is after first bracket 

#################### Wildcards with Other Commands ####################
# Move all files that end in ".cpp" to "cpp" programs directory
mv *.cpp ../cppPrograms
ls ../cppPrograms

# Copy all files that start with "imp" to backup dirctory 
cp imp* ../backup/
ls ../backup 

# Remove all files that start with "old" or end with "old"
rm -i old* *old  # Specifing two patterns,"old*" and "*old*"  

# See file type of all files 
file * 

# Wildcards in pathnames
# Copy all ".cpp" files in dir1 to dir2
cp dir1/*.cpp dir2/
ls dir2 

# Copy all ".cpp" files that are present in any dirctory under my home directory into dir2
cp ~/*/*.cpp dir2/

# Remove all ".txt" files from dir1
ls dir1/*.txt # Checkf first 
rm dir1/*.txt

# Match Documents directory of all users
ls -l /home/*/Documents

# Hidden files will not be selected with wildcards are used
# For example: rm * will remove all files except hidden ones
# Note this restriction only applies when the dot is at the beginning, does not apply when dot is in the middle of the filename

# File names stating with a dot will be matched only when the dot is explicity supplied in the pattern
# If you want to list all hidden files have to explicity match the dot
ls .*
ls ???
ls .??

#################### File Names Containing Wildcard Patterns ####################
# Will remove "faq?" file AND all files starting with "faq"
rm faq? 

# Will remove "five*" file AND all files starting with "five"
rm five* 
rm -i five* 

# In these cases need to protect thest wildcard characters and turn off their special meaning
# We don't want the Shell to interpet them as wildcard characters, we want the shell to treat them as normal characters 

# Can enclose entire pattern with quotes
rm -i 'five*'

# or precede wildcard character with backslash
rm -i faq\?

# Can do the same if file name that contains spaces - enclose in quotes or precede each space with backslash