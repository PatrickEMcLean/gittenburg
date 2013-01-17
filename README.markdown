gittenburg
==========

A writing/publishing system built around bash, markdown,
[Sublime Text 2](http://www.sublimetext.com/) , [Marked](http://markedapp.com/) and (optionally) [Pandoc](http://johnmacfarlane.net/pandoc/).  

My goals are:

* to work in plain text. 
* Have a perfect backup, record of changes and daily word count
* learn how to use git and shell scripting. 
* have the git commit history work as a [Seinfeldian Chain](http://lifehacker.com/281626/jerry-seinfelds-productivity-secret). Somewhat stupid, but it works for me.  
* go directly from one canonical set of .md files to a publishable ebook

## How it Works. 

I use this on OSX. No clue what you'd have to do, if anything to use this anywhere else. 

filework.sh automatically builds book.md (a preview file for use with Marked) counts the words and pushes changes to a github repo. If you add a commit message, it will post the commit message as well. Be sure to put quotes around the commit message 

filework.sh calls build.sh in /build to actually build the book. If you uncomment lines in this script you can build other ebook formats. I currently have .docx .html and .epub in there. You can make many more using Pandoc

Files are inserted into the book alphabetically by name, so 09Chapter9.md will come before Chapter01.md. I number chapters and leave everything else as a name so that my notes and such go at the end. Simple. And simple is good.  


### sublime-build

Copy the gittenburg.sublime-build into your ~/Library/Application Support/Sublime Text 2/Packages/User.

Then, from the command line, use this git-credential store, for your repo. 

    $ git config credential.helper store

    $ git push http://example.com/repo.git
    
    Username: <type your username>
    
    Password: <type your password>
    

    [several days later]
    
    $ git push http://example.com/repo.git
    
    [your credentials are used automatically]

http://kernel.org/pub/software/scm/git/docs/git-credential-store.html

## Setup

Make a new repository on github
git clone https://github.com/PatrickEMcLean/gittenburg FOLDERNAME
git remote add origin http://path/to/repository
bash filework.sh "optional commit message

And you are off. 

## Where it fails. 

### Issues with .mobi and Kindle conversions

For reasons beyond my ken, pandoc's mobi file do not convert well to .mobi files. The table of contents get screwed up. Right now the only way to build a proper file from the output of Gittenburg, right now is to open the file in [Calibre](http://calibre-ebook.com/) and convert it. Adding tags and cover images, etc. 

### Proofreading/Proofreader issues. 

Like it or not, Word's tracked changes functions are the best way to work with a professional proofreader. Especially because proofreaders (an OCD breed to begin with) are comfortable with that level of technology. 

Also, many proofreaders do a number of global search and replace operations in Word. Yes, I know this could be accomplished other ways across flat files, but it seems we are at a point where the human skills and the technology don't match up well. 

[Substance](http://interior.substance.io/) seems like a step in the right direction. 

## Other Stuff

[Prose.io](http://prose.io/) is very cool and useful if you are dealing with md on github.

The Templates Directory is a set of checklists and story structures I find useful to look during the early stages of writing. Your mileage may vary.



