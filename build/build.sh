# Gittenburg Build 
#
# Grinds out ebook files by finding all .md files in the main directory.
# 
# 
# 



if [ -f book.md ];
then
   rm book.md
fi

if [ -f fullbook.md ];
then
   rm fullbook.md
fi


cat `find *md` >> ./build/fullbook.md

## To Build additional kinds of ebooks, uncomment these lines and name your book.

# BOOKNAME="YOURGITTENBURGEBOOK"


# pandoc -S --toc --epub-stylesheet=./build/style.css --epub-metadata=./build/metadata.xml -o ./build/$BOOKNAME.epub `find *md`

# pandoc -S --toc --epub-stylesheet=./build/style.css --epub-metadata=./build/metadata.xml -o ./build/$BOOKNAME.docx `find *md`

# pandoc -o ./build/$BOOKNAME.html `find *md`