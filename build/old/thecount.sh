#!/bin/bash

#*************************************#
# 
# TheCount.sh v1
#
# This is a shell script to
# give a word count of all files in 
# and below a directory. 
#
#
#*************************************#

# cat */*.md | wc -w

cd .. 
find . -name '*.md' | xargs wc -w | tail -n -1