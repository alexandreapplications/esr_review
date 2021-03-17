#! /bin/bash

function funcName()
{
    echo "this is a new function"
}
function funcPrint()
{
    returningValue="using function"
    echo $1
}

funcName
returningValue=Hello

echo $returningValue

funcPrint Hi
echo $returningValue
