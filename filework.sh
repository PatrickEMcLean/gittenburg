#!/bin/bash 


cd ./build
bash build.sh
cd ..
WORDCOUNT=`bash thecount.sh`
git add -A . 
echo "$1 $WORDCOUNT"
git commit -m "$1 $WORDCOUNT"
git push origin master

