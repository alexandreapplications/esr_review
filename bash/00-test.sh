#! /bin/bash
pwd="$1"
echo $pwd
if [[ $pwd = "ABC" ]]
then
  echo "That's correct"
else 
  echo "That´s not correct"
fi