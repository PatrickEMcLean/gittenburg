#!/bin/bash

#*************************************#
# 
# TheCount.sh v1
#
# This is a shell script to
# give a word count of all files in 
# and below a directory. 
#
# Well, it's really more of a command.
#
#
#*************************************#

# cat */*.md | wc -w

find . -name '*.md' | xargs wc -w | tail -n -1