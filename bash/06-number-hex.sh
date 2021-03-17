#! /bin/bash

echo "Enter Hex Number"
read Hex

echo -n "The decimal value of $hex is: "

echo "obase=10; ibase=16; $Hex" | bc