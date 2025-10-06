#################### Brace Exapansion with mkdir command ####################
# Open terminal: CTRL + ALT + T
# Create working directory
mkdir project
cd project/

# Create 60 folders with format jan2017 - dec2022 using brace expansion
# Shell will expand braces similar to brackets in algebra class 
mkdir {jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec}_{2017,2018,2019,2020,2021,2022} 

# Can use double dot ".." shortcut for the years
# Doesn't have to be numbers could be "A..Z", anything that has a pattern
{jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec}_{2017..2022}

#################### Brace Exapansion with touch command ####################
# Create 100 files in each folder
touch  {jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec}_{2017..2022}_file{1...100}

# Other simple examples 
touch file{A,B,C}.txt
touch file{A..C}.txt
touch file{A..V}.txt

#################### Brace Exapansion with ls command ####################
# List files with brace expansion
cd Desktop/projects
ls {jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec}_{2017..2022}

# Redirect output to a file 
ls {jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec}_{2017..2022} > out.txt