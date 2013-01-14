


pandoc -S -- toc --epub-metadata=metadata.xml --self-contained -o MY-WAR-WITH-SANTA.epub MY-WAR-WITH-SANTA.md



# manually drag the file into Calibre and complete the conversion. 

# ebook-convert input_file output_file [options]

# pandoc -S --toc --epub-metadata=metadata.xml -o MY-WAR-WITH-SANTA.epub MY-WAR-WITH-SANTA.md

# pandoc -S --epub-metadata=metadata.xml -o MY-WAR-WITH-SANTA.epub MY-WAR-WITH-SANTA.md

# kindlegen MY-WAR-WITH-SANTA.epub

# --epub-cover-image=FILE

# -------------------------------------

# Kindle html Elements

# Wrap toc in this: 

# 	<guide> <reference type="toc" title="Table of Contents" href="toc.html"/> </guide>

# Markdown -- toc elements  [Chapter 2](#chapter-2) 

# For pagebreak use this

# 	<mbp:pagebreak /> 

# -------------------------------------

# Making a shell script executable.

# The final step is for you to actually make the script executable, which you can do by using the chmod command, as in: chmod +x myscript.sh.

# Once you've done that - particularly if you have the script in one of the directories in your PATH - you can execute the script by simply typing its name at the command line.




# -------------------------------------


# Should take the markdown file(s) and turn them into a perfect epub and mobi files. 

# Requires a cover image, title txt and correct metadata file. 

# ------------------------------------------------

# reference at http://johnmacfarlane.net/pandoc/README.html


# Consider using this for custom output. 
# -data-dir=DIRECTORY



# This is the command I stole from the tutorial 
# @http://johnmacfarlane.net/pandoc/epub.html
#
# pandoc -S --epub-metadata=metadata.xml -o progit.epub title.txt \
#   01-introduction/01-chapter1.markdown \
#   02-git-basics/01-chapter2.markdown \
#   03-git-branching/01-chapter3.markdown \
#   04-git-server/01-chapter4.markdown \
#   05-distributed-git/01-chapter5.markdown \
#   06-git-tools/01-chapter6.markdown \
#   07-customizing-git/01-chapter7.markdown \
#   08-git-and-other-scms/01-chapter8.markdown \
#   09-git-internals/01-chapter9.markdown
#
#
# I suspect that adding --epub-stylesheet style.css will make
# stylesheet in the directory live. 

# Metadata in Dublin Core Elements (http://dublincore.org/documents/dces/)


