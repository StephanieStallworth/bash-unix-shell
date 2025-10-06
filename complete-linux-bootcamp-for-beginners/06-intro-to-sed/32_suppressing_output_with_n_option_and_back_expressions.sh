#################### -n option #################### 
cat wagons.txt

# Change blue wagons to black wagons
# Send to standard output and not actually change the text 
sed 's/blue/black/' wagons.txt 

# Only print out lines that were altered 
sed -n 's/blue/black/p' wagons.txt 

#################### Back expressions ####################
# Replace all instnaces of the word wagon with polygon
# In other words, replace 'wag' with 'poly'
sed 's/wa\(gon\)/poly\1/' wagons.txt # look back into first regular expression and numerically address that subexpression 

# Same thing using different delimiter 
sed 's:wa\(gon\):poly\1:' wagons.txt 