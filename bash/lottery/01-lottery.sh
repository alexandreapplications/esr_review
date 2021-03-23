#! /bin/bash

function get_numbers() {
    echo "Choose 6 numbers between 1 and 60 (blank for exit)"
    read num
    if [[ -z $num  ]]
    then
        return 1
    fi
    mapfile -t < <(echo $num | grep -Eo "[0-9]+") numbers

    return 0
}


# Verify if there was a input
if [[ $# -eq 6 ]]
then
    numbers=("$@")
elif [[ $# -eq 0 ]]
then 
    while :
    do
        get_numbers
        result=$?
        if [[ $result -eq 1 ]]
        then
            exit $result
        fi  
        if [[ ${#numbers[@]} -eq 6 ]] 
        then
            break
        else
            echo "you have chosen ${#numbers[@]} numbers, pease try again"
        fi
    done
else
    echo "Use $0 aa bb cc dd ee ff with 6 numbers between 1 and 60"
    echo "Or use $0 without parameters"
    exit 1
fi

regex=""
or=""
stringArray=()
for vlr in ${numbers[@]}
do

    if [[ $vlr -le 9 ]]
    then
        regex="$regex$or([[:space:]]00$vlr)"
        or="|"
        stringArray+=("00$vlr")
    else
        regex="$regex$or([[:space:]]0$vlr)"
        or="|"
        stringArray+=("0$vlr")
    fi
done

echo ${stringArray[@]}
fileName="results_${numbers[0]}-${numbers[1]}-${numbers[2]}-${numbers[3]}-${numbers[4]}-${numbers[5]}_$EPOCHSECONDS.txt"



while read line;
do  
    mapfile < <(echo "$line" | grep -Eo "$regex") hits
    echo -e "$line\t\033[0;32m${#hits[@]}\033[0m hits\n\033[0;93m${hits[@]}\033[0m"
done < <(grep -E "$regex" actual_results.txt)

exit 0;