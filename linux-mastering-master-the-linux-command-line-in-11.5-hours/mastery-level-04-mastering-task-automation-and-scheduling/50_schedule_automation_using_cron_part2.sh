#################### backup.sh #################### 
#!/bin/bash

# Make sure it always save to Desktop 
tar -czf ~/backups/backup.tar.gz ~/{Documents,Downloads,Desktop,Pictures,Videos} 2>/dev/null # "bit bucket" # updating Desktop to backups folder

# Log date backup happened 
date >> ~/backups/backups.log