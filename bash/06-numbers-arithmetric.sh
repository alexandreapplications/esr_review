#! /bin/bash

echo 31+21

n1=4
n2=20

echo $(( n1 + n2 ))
echo $(( n1 - n2 ))
echo $(( n1 * n2 ))
echo $(( n1 / n2 ))
echo $(( n1 % n2 ))

echo $(expr $n1 + $n2)