#! /bin/bash

select car in BMW MERCEDES TESLA ROVER TOYOTA
do
    echo "You have selected $car"
    case $car in
    BMW)
        echo "German car selected";;
    MERCEDES)
        echo "German car selected";;
    TESLA)
        echo "American car selected";;
    ROVER)
        echo "English car selected";;
    TOYOTA)
        echo "Japanise car selected";;
    *)
        echo "Please select 1..5";;
    esac
done