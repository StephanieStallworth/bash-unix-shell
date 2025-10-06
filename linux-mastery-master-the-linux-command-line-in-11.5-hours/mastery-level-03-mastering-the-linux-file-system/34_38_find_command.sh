####################  Haystack Find Example ####################
# Directory 
mkdir haystack

# Create 500 subfolders with brace expansion  
mkdir haystack/folder{1..500}

# Create 100 files in each of the folders 
touch haystack/folder{1..500}/file{1..100}

# Create file inside any random folder 
touch haystack/folder$(shuf -i 1-500 -n 1)/needle.txt.

# Use find command to find it 
find haystack/ -type f -name "needle.txt"

# Output 
# haystack/folder449/needle.txt

# Move that file to desktop 
find haystack/ -type f -name "needle.txt" -exec mv {} ~/Desktop \;