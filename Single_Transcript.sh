echo "ENTER A URL";
read myInput;
okay=$(echo $myInput | grep -o -E '[0-9]+')
echo $okay
if [ $okay -lt 67 ]
then
  curl $myInput > html.txt;
  mv html.txt html.txt.gz;
  gunzip html.txt.gz;
  sed -e 's/<[^>]*>//g' html.txt > result.txt
  sed -i 's/\[FULL TRANSCRIPT\]/ayylmao1/g' result.txt
  sed -i 's/\[END OF RECORDING\]/ayylmao/g' result.txt
  sed -n "/ayylmao1/,/ayylmao/p" result.txt > "$okay.txt"
  sed -i 's/ayylmao1/[FULL TRANSCRIPT\]/g' "$okay.txt"
  sed -i 's/ayylmao/[END OF RECORDING\]/g' "$okay.txt"
  rm html.txt
  rm result.txt
else
  curl $myInput > html.txt;
  mv html.txt html.txt.gz;
  gunzip html.txt.gz;
  sed -e 's/<[^>]*>//g' html.txt > result.txt
  sed -i 's/\[START OF RECORDING\]/ayylmao1/g' result.txt
  sed -i 's/\[END OF RECORDING\]/ayylmao/g' result.txt
  sed -n "/ayylmao1/,/ayylmao/p" result.txt > "$okay.txt"
  sed -i 's/ayylmao1/[START OF RECORDING\]/g' "$okay.txt"
  sed -i 's/ayylmao/[END OF RECORDING\]/g' "$okay.txt"
  rm html.txt
  rm result.txt
      fi
