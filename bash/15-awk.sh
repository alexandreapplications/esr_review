 #! /bin/bash

echo "Enter file to print from awk"
read fileName

if [[ -f $fileName ]]
then

    # awk '/Linux/{print}' $fileName
    awk '/Windows/{print $2}' $fileName
    awk '/Windows/{print $1,$4}' $fileName
else
    echo "$fileName doesn't exist"
fi