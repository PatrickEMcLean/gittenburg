# Build a new index for a marked file


rm book.md
cd ..
for f in `find *md`; 
do
echo "<<[$f]" >> ./build/book.md
done
