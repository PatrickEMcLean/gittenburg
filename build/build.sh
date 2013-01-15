# Gittenburg Build 
#
# Grinds out ebook files by finding all .md files in the main directory.
# 
# 
# 


if [ -f ../output/fullbook.md ];
then
   rm fullbook.md
fi

cd ..
cat `find *md` >> ./output/fullbook.md

# To Build additional kinds of ebooks, uncomment these lines and name your book.

BOOKNAME="YOURGITTENBURGEBOOK"


pandoc -S --toc --epub-stylesheet=./build/style.css --epub-metadata=./output/metadata.xml -o ./output/$BOOKNAME.epub `find *md`

pandoc -S --toc --epub-stylesheet=./build/style.css --epub-metadata=./output/metadata.xml -o ./output/$BOOKNAME.docx `find *md`

pandoc -o ./output/$BOOKNAME.html `find *md`