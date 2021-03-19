 #! /bin/bash

echo "Enter file to search text from"
read fileName

if [[ -f $fileName ]]
then
    echo "Enter the text to search"
    read grepvar
    grep -i -n $grepvar $fileName
    echo "----"
    echo "There are $(grep -i -n -c $grepvar $fileName) ocurrences"
    echo "===="
    grep -i -n -v $grepvar $fileName
    echo "----"
    echo "There are $(grep -i -c -v $grepvar $fileName) ocurrences without"
else
    echo "$fileName doesn't exist"
fi