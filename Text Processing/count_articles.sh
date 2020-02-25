#!/bin/bash

# Replace this line with one or more shell commands
# You may write to intermediate text files on disk if necessary
ls test_*.txt | for file in $(ls test_*.txt)
do
	the_count=$(cat $file | grep -c -E '\b[Tt]he\b')
	a_count=$(cat $file | grep -c -E '\b[Aa]\b')
	an_count=$(cat $file | grep -c -E '\b[Aa]n\b')
	echo "$file,$the_count,$a_count,$an_count"
done
