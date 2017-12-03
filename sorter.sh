#!/bin/bash 

# Simple Email Sorter
# By Versailles ~ sec7or ~ SHL
# Miss You Cans21

# bash sorter.sh emailist

if [ -f "$1" ]; then 
grep -o '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*' "$1" | sort | uniq -i > clear

echo "+----------------------+"
echo "| Simple Email Sorter  |"
echo "| Versailles <3 Cans21 |"
echo "+----------------------+"

echo "[!] Total List : `wc -l $1`"
echo "[!] List Clear : `wc -l clear`"

for i in gmail yahoo aol hotmail;do cat clear | grep $i > $i.txt;echo "[+] $i : `wc -l $i.txt`";done

cat clear | grep -v gmail | grep -v yahoo | grep -v aol | grep -v hotmail > others.txt;echo "[+] others : `wc -l others.txt`"
rm clear
echo "[ DONE ]"

else 
echo "[?] File $1 Tidak Ada !!" >&2 
exit 1 
fi
