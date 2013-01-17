# Gittenburg Build 
#
# Grinds out ebook files by finding all .md files in the main directory.
# 
# 
# 


if [ -f ../output/fullbook.markdown ];
then
   rm ../output/fullbook.markdown
fi

cd ..

cat `find *md` >> output/fullbook.markdown

# To Build additional kinds of ebooks, uncomment these lines and name your book.

# BOOKNAME="YOURGITTENBURGEBOOK"

# pandoc -S --toc --epub-stylesheet=build/style.css --epub-metadata=build/metadata.xml -o output/$BOOKNAME.epub `find *md`

# pandoc -S --toc --epub-stylesheet=build/style.css --epub-metadata=build/metadata.xml -o output/$BOOKNAME.docx `find *md`

# pandoc -o output/$BOOKNAME.html `find *md`