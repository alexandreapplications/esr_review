 #! /bin/bash

echo "Enter file to substitute using sed"
read fileName

if [[ -f $fileName ]]
then
    cat $fileName | sed 's/i/I/g'
    echo '----'
    sed 's/i/I/g' $fileName

else
    echo "$fileName doesn't exist"
fi