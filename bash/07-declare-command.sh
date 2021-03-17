#! /bin/bash

# Enlist all variables
# declare -p
# declare myvariable=test => Creates an personal variable into shell

# sets it readonly
declare -r pwdfile=/etc/passwd

echo $pwdfile

pwdfile=/etc/abc.txt

echo $pwdfile

