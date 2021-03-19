#! /bin/bash
outputFileName="11-newFileDownload.dat"
url="http://www.ovh.net/files/1Mio.dat"
curl -I ${url} 
if [[ -f "$outputFileName" ]] 
then
    echo "File $outputFileName already exists"
else
    curl ${url} -o $outputFileName
fi