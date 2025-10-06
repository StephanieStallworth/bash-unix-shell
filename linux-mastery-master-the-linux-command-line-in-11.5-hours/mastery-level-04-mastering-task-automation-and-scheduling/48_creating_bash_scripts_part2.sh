#################### backup.sh #################### 
#!/bin/bash

# Compress and archive folders inside home directory 
tar -cvzf backup.tar.gz ~/{Documents,Downloads,Desktop,Pictures,Videos} # Inside there put all this from our home directory 

## Customize script as time goes on based on needs 
# Revmoe the verbose option
tar -czf backup.tar.gz ~/{Documents,Downloads,Desktop,Pictures,Videos} 

# Redirect Standard Error
tar -czf backup.tar.gz ~/{Documents,Downloads,Desktop,Pictures,Videos} 2>/dev/null # "bit bucket"

# Make sure it always save to Desktop 
tar -czf ~/Desktop/backup.tar.gz ~/{Documents,Downloads,Desktop,Pictures,Videos} 2>/dev/null # "bit bucket"