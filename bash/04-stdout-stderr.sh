#! /bin/bash

ls -al 1>04-stdout-stderr-ok.txt 2>04-stdout-stderr-err.txt

ls +al > 04-stdout-stderr-ok-err-l2.txt 2>&1
ls -al >& 04-stdout-stderr-ok-err-l3.txt #redirects standard output and errors to same file