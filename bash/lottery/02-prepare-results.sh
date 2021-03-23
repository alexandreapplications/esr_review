#! /bin/bash
cat results.txt | grep -E "[0-3][0-9]/[0-1][0-9]/[1-2][0-9]{3}" > onlyresults.txt
cut -f 1,4,5,6,7,8,9  onlyresults.txt > actual_results.txt