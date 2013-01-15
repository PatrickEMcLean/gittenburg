# Build a new index for a marked file



if [ -f book.md ];
then
   rm book.md
fi

if [ -f fullbook.md ];
then
   rm fullbook.md
fi

cd ..
for f in `find *md`; 
do
echo "<<[$f]" >> ./build/book.md
done

cat `find *md` >> ./build/fullbook.md

## To Build additional kinds of ebooks, uncomment these lines

BOOKNAME="YOURGITTENBURGEBOOK"



pandoc -S --toc --epub-stylesheet=./build/style.css --epub-metadata=./build/metadata.xml -o ./build/$BOOKNAME.epub `find *md`

pandoc -S --toc --epub-stylesheet=./build/style.css --epub-metadata=./build/metadata.xml -o ./build/$BOOKNAME.docx `find *md`

pandoc -o ./build/$BOOKNAME.html `find *md`