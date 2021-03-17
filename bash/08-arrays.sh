#! /bin/bash

car=('BMW' 'Toyota' 'Honda')

echo "${car[@]}"
echo "${car[0]}"
echo "${car[1]}"
echo "${car[2]}"

echo "${!car[@]}"

for i in ${car[@]}; do
    echo $i
done

echo "${#car[@]}"

#Removes from the array
unset car[2]
echo "${car[@]}"

car[1]="Mercedes"
echo "${car[@]}"
