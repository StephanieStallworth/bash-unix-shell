# Print list of only LINE numbers that contain correct phones 
sed -n '/\(\?[0-9]\{3\}\)\?-\?[0-9]\{3\}-[0-9]\{4\}$/=' ~/phones.txt