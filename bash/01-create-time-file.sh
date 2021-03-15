#!/bin/bash
echo "Update the execution time inside a file"
FILE=./01-create-time-file.txt
if [[ -f "$FILE" ]]; then
   echo "$FILE exists."
   OLD_VALUE="$( cat $FILE )"
else 
    export OLD_VALUE="----"
    echo "$FILE does not exists."
fi
echo $OLD_VALUE
date '+%Y-%m-%d %X' > $FILE