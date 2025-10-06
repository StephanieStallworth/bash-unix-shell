####################  * wildcard ####################
# zero or more characters at this position  
ls tes* # 

ls *file

ls * 

ls *t*

#################### ? wildcard ####################
# N characters at this position 
ls ?e
rm ????? # 4 characters at this position 

#################### combine wildcards ####################
# Look for zero or more chracters
# then 1 character 
# then an e 
ls *?e 