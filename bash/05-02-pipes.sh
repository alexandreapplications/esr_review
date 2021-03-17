#! /bin/bash

echo "enter 1st string"
read std1

echo "enter 2nd string"
read std2

if [ "$std1" == "$std2" ]
then
    echo "both strings match"
else
    echo "string don't match"
fi

if [ "$std1" \< "$std2" ]
then
    echo "1st is ismoller"
elif [ "$std1" \> "$std2" ]
then
    echo "2nd is ismoller"
else
    echo "The size is the same"
fi