#################### phones.sed ####################
# Print correct phone numbers. Use with -f switch to sed.
# Print a title (\ followed by a newline escapes the newline):
1 i\ # i = insert text before current line 
\
Correct Phone Numbers:\

# Print only 'correct' phone numbers:
/\(\?[0-9]\{3\}\)\?-\?[0-9]\{3\}-[0-9]\{4\}$/p

# Print 'is correct' and a newline after each:
/\(\?[0-9]\{3\}\)\?-\?[0-9]\{3\}-[0-9]\{4\}$/a is correct\

### Then execute in terminal #####
sed -nf phones.sed ~/phones.txt 