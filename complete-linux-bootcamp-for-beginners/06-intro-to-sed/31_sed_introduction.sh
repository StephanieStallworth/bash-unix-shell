# Replace string
echo 'green ball' | sed 's/green/blue/' # replace the word green with blue
echo 'green ball' | sed 's/ball/wagon/'# replace the word ball with wagon

# Can use any delimiter
echo 'green ball' | sed 's:green:blue/' # replace the word green with blue