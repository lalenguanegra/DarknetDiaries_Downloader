# Old Code 

#!/bin/bash
echo "ENTER A URL";
read myInput;
curl $myInput > html.txt;
mv html.txt html.txt.gz;
gunzip html.txt.gz;
grep -o '"https://traffic.megaphone[^"]*["mp3"]' html.txt | tr -d '"' > result.txt;
grep -o '"Ep [^"]*["\"\"]' html.txt | tr -d '"' > title.txt;
rm html.txt;
while read url; do wget -O $((++i)).mp3 "$url"; done < result.txt;
while read title; do mv "1.mp3" "$title.mp3"; done < title.txt;
rm title.txt;
rm result.txt;


# New Code 

#!/bin/bash
echo "ENTER A URL";
read myInput;
curl $myInput > html.txt;
mv html.txt html.txt.gz;
gunzip html.txt.gz;
grep -o '"https://www.podtrac.com[^"]*["mp3"]' html.txt | tr -d '"' > result.txt;
grep -o '"Ep [^"]*["\"\"]' html.txt | tr -d '"' > title.txt;
rm html.txt;
while read url; do wget -O $((++i)).mp3 "$url"; done < result.txt;
while read title; do mv "1.mp3" "$title.mp3"; done < title.txt;
rm title.txt;
rm result.txt;

