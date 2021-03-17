#! /bin/bash

echo "enter 1st string"
read std1

echo "enter 2nd string"
read std2

c=$std1$std2

echo $c
echo ${std1^}
echo ${std2^^}