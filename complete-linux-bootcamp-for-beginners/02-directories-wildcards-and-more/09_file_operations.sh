#################### Copy File ####################
cp file1 file4

# Copy file1 to final directory 
cp file1 ../final  
ls ../final 

#################### Remove File ####################
cd .. 
cd final 
ls 
rm file1 
ls 

# Copy all "file" files into final directory  
cd ../working 
cp file* ../final 

# Move files 
cd ../final/
rm *

#################### Move or Rename File ####################
# Move files to here
mv ../working/file* ./  # shortcut for here aka "this directory" is "./" 

# Rename file 
# Can use mv to rename file also if you're in the same directory of the file you want to rename  
mv file1 final 