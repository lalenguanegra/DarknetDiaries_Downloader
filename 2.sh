#!/bin/bash
echo "ENTER A URL";
for i in {1..2}; do curl "https://darknetdiaries.com/episode/$i/" > html.txt;
grep -o '"https://traffic.megaphone[^"]*["mp3"]' html.txt | tr -d '"' > result.txt;
grep -o '"Ep [^"]*["\"\"]' html.txt | tr -d '"' > title.txt;
rm html.txt;
while read url; do wget -O $((++i)).mp3 "$url"; done < result.txt;
while read title; do mv "$i.mp3" "$title.mp3"; done < title.txt;
rm title.txt;
rm result.txt;
done;
