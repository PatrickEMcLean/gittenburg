#!/bin/bash 

bash build.sh
WORDCOUNT=`bash thecount.sh`
cd ..
git add -A . 
git commit -m "$1 $WORDCOUNT"
git push origin master

echo "*********** BOOOM **********"
echo $WORDCOUNT

