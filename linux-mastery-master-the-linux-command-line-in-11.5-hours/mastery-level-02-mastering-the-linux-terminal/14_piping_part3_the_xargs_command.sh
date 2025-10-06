#################### xargs with echo command ####################
# echo doesn't accept Standard Input, ONLY Command Line Arguments 
# Pipe into output of command into xargs first to convert into command line arguments 
# Then tell xargs to work with echo 
date | xargs echo 

# Could also give echo it's own command line arguments
# Note: Command line arguments of echo would be processed first, then command line arguments from xargs  
date | xargs echo "hello"

# Another example 
# Convert output of pipes to command line arguments 
# Tell xargs to work with echo on this 
date | cut --delimiter=" " --=fields=1 | xargs | echo

#################### xargs with rm command ####################
# File containing file names to delete filestodelete.txt
cat filestodelete.txt

# Output 
# fulldate.txt
# today.txt

# Read data from filestodelete.txt 
# then pass into xargs to convert into command line arguments for rm 
# Can't use rm filestodelete.txt as it would remove the actual file filestodelete.txt, not the filenames inside of it 
cat filestodelete.txt | xargs rm 

# Would be the same as writing out this command
rm fulldate.txt today.txt 

#################### xargs with wc command ####################
# Counting lines of CSV
date > /home/folder/subfolder/file.txt  
find ./$(date +"%Y%0m%0d")/ -name '*.19*.csv' | xargs wc -l | sort -k2  > /home/folder/subfolder/file.txt
echo > /home/folder/subfolder/file.txt