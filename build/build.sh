# Build a new index for a marked file

cd ..
rm book.md
for f in `find *md`; 
do
echo "<<[$f]" >> book.md
done
