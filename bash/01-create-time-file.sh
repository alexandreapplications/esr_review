#!/bin/bash
: '
This script has the objective to replace the last value to a new value.
'
cat << sav shels avaliable
the shells availble are 
sav

ls /etc/shells
which bash

echo "Proceding"
FILE=./01-create-time-file.txt
if [[ -f "$FILE" ]]; then
   echo "$FILE exists, it will be created."
   OLD_VALUE="$( cat $FILE )"
else 
    export OLD_VALUE="----"
    echo "$FILE does not exists it will be updated."
fi
date '+%Y-%m-%d %X' > $FILE
echo "Replaced the $OLD_VALUE for the $( cat $FILE )"
