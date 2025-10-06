#################### tee command ####################
# Pass the output of date command horizontally along the pipe 
# AND save the output of date vertically downwards into a file 
date | tee fulldate.txt|cut --delimiter=" " --field=1 

# Save output of piping to file 
date | tee fulldate.txt|cut --delimiter=" " --field=1 > today.txt