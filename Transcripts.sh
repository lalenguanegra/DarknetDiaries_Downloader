echo "ENTER A URL";
for i in {1..67}; do curl "https://darknetdiaries.com/transcript/$i/" > html.txt;
mv html.txt html.txt.gz;
gunzip html.txt.gz;
sed -e 's/<[^>]*>//g' html.txt > result.txt
sed -i 's/\[FULL TRANSCRIPT\]/ayylmao1/g' result.txt
sed -i 's/\[END OF RECORDING\]/ayylmao/g' result.txt
sed -n "/ayylmao1/,/ayylmao/p" result.txt > "$i.txt"
sed -i 's/ayylmao1/[FULL TRANSCRIPT\]/g' "$i.txt"
sed -i 's/ayylmao/[END OF RECORDING\]/g' "$i.txt"
rm html.txt
rm result.txt
done;
for i in {68..71}; do curl "https://darknetdiaries.com/transcript/$i/" > html.txt;
mv html.txt html.txt.gz;
gunzip html.txt.gz;
sed -e 's/<[^>]*>//g' html.txt > result.txt
sed -i 's/\[START OF RECORDING\]/ayylmao1/g' result.txt
sed -i 's/\[END OF RECORDING\]/ayylmao/g' result.txt
sed -n "/ayylmao1/,/ayylmao/p" result.txt > "$i.txt"
sed -i 's/ayylmao1/[START OF RECORDING\]/g' "$i.txt"
sed -i 's/ayylmao/[END OF RECORDING\]/g' "$i.txt"
rm html.txt
rm result.txt
done;