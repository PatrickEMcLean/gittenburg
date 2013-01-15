#!/bin/bash 


cd ./build
bash build.sh
cd ..
WORDCOUNT=`bash thecount.sh`
git add -A . 
echo "$1 $WORDCOUNT"
git commit -m "$1 $WORDCOUNT"
git push origin master

# Warning, don't change the last line to something like this
#
# 'git push origin master -u username -p password'
#
# It will push your username and password to the repo. 
# 
#
#
# Use git config credential.helper store instead
# http://kernel.org/pub/software/scm/git/docs/git-credential-store.html
#
