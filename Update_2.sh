#Old Code

#!/bin/bash
echo "ENTER A URL";
for i in {1..69}; do curl "https://darknetdiaries.com/episode/$i/" > html.txt;
mv html.txt html.txt.gz;
gunzip html.txt.gz;
grep -o '"https://traffic.megaphone[^"]*["mp3"]' html.txt | tr -d '"' > result.txt;
grep -o '"Ep [^"]*["\"\"]' html.txt | tr -d '"' > title.txt;
rm html.txt;
while read url; do wget -O $((i)).mp3 "$url"; done < result.txt;
while read title; do mv "$i.mp3" "$title.mp3"; done < title.txt;
rm title.txt;
rm result.txt;
done;

#New Code

#!/bin/bash
echo "ENTER A URL";
for i in {70..70}; do curl "https://darknetdiaries.com/episode/$i/" > html.txt;
mv html.txt html.txt.gz;
gunzip html.txt.gz;
grep -o '"https://www.podtrac.com[^"]*["mp3"]' html.txt | tr -d '"' > result.txt;
grep -o '"Ep [^"]*["\"\"]' html.txt | tr -d '"' > title.txt;
rm html.txt;
while read url; do wget -O $((i)).mp3 "$url"; done < result.txt;
while read title; do mv "$i.mp3" "$title.mp3"; done < title.txt;
rm title.txt;
rm result.txt;
done;

#Combined (1-70)
echo "ENTER A URL";
for i in {1..69}; do curl "https://darknetdiaries.com/episode/$i/" > html.txt;
mv html.txt html.txt.gz;
gunzip html.txt.gz;
grep -o '"https://traffic.megaphone[^"]*["mp3"]' html.txt | tr -d '"' > result.txt;
grep -o '"Ep [^"]*["\"\"]' html.txt | tr -d '"' > title.txt;
rm html.txt;
while read url; do wget -O $((i)).mp3 "$url"; done < result.txt;
while read title; do mv "$i.mp3" "$title.mp3"; done < title.txt;
rm title.txt;
rm result.txt;
done;
echo "ENTER A URL";
for i in {70..70}; do curl "https://darknetdiaries.com/episode/$i/" > html.txt;
mv html.txt html.txt.gz;
gunzip html.txt.gz;
grep -o '"https://www.podtrac.com[^"]*["mp3"]' html.txt | tr -d '"' > result.txt;
grep -o '"Ep [^"]*["\"\"]' html.txt | tr -d '"' > title.txt;
rm html.txt;
while read url; do wget -O $((i)).mp3 "$url"; done < result.txt;
while read title; do mv "$i.mp3" "$title.mp3"; done < title.txt;
rm title.txt;
rm result.txt;
done;
