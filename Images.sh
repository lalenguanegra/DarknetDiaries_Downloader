echo "Darknet Diaries Artwork";
curl "https://darknetdiaries.com/artwork/" > html.txt;
mv html.txt html.txt.gz;
gunzip html.txt.gz;
sed -i 's/<img src=\"\/imgs\//https:\/\/darknetdiaries.com\/imgs\/artwork\//g' html.txt;
grep -o 'https://darknetdiaries.com/imgs/artwork/[^"]*[".jpg"]' html.txt | tr -d '"' > result.txt;
rm html.txt;
sed -i 's/\/artwork\/artwork\//\/artwork\//g' result.txt
sed -i '8,80!b;s/\/imgs\/artwork\//\/imgs\//g' result.txt
wget -i result.txt

