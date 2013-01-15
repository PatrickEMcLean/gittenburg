gittenburg
==========

A writing/publishing system built around bash, markdown,
sublimeedit2 and Marked. 

My goals are:

* to work in plain text. 
* Have a perfect backup, record of changes and daily word count
* learn how to use git and shell scripting. 
* have the git commit history work as a [Seinfeldian Chain](http://lifehacker.com/281626/jerry-seinfelds-productivity-secret). Somewhat stupid, but it works.  
* go directly from one canonical set of .md files to a publishable ebook

## How it Works. 

I use this on OSX. No clue what you'd have to do, if anything to use this anywhere else. 

filework.sh automatically builds book.md (a preview file for use with Marked) counts the words and pushes changes to a github repo. 

filework.sh calls build.sh in /build to actually build the book. If you poke around in build/old you'll see the [pandoc](http://johnmacfarlane.net/pandoc/) commands to generate various formats of ebooks using pandoc. 

Files are inserted into the book alphabetically by name, so 09Chapter9.md will come before Chapter01.md. I number chapters and leave everything else as a name so that my notes and such go at the end. Simple. And simple is good.  

## Where it fails. 

### Issues with .mobi and Kindle conversions

For reasons beyond my ken, pandoc's mobi file do not convert well to .mobi files. The table of contents get screwed up. Right now the only way to build a proper file from the output of Gittenburg, right now is to open the file in [Calibre](http://calibre-ebook.com/) and convert it. Adding tags and cover images, etc. 

### Proofreading/Proofreader issues. 

Like it or not, Word's tracked changes functions are the best way to work with a professional proofreader. Especially because proofreaders (an OCD breed to begin with) are comfortable with that level of technology. 

Also, many proofreaders do a number of global search and replace operations in Word. Yes, I know this could be accomplished other ways across flat files, but it seems we are at a point where the human skills and the technology don't match up well. 

[Substance](http://interior.substance.io/) seems like a step in the right direction. 

## Other Stuff

[Prose.io](http://prose.io/) is very cool and useful if you are dealing with md on github.



