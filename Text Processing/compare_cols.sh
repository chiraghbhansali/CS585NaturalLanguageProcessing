#!/bin/bash

# Replace this line with one or more shell commands
# You may write to intermediate text files on disk if necessary
while read line
do
	columns_to_compare=$(echo $line | cut -f3,5 -d',')
	#echo $columns_to_compare ## extract colummns of interest
	# Extract first word of 3 column
	first_word_3rd_column=`echo $columns_to_compare | awk '{print $1}'`
	#echo $first_word_3rd_column ## extract the first word of third column
	fifth_col=$(echo $columns_to_compare | cut -f 2 -d ',' | grep -iw $first_word_3rd_column)
	## match the word in the fifth columm
echo $fifth_col
done < test.in.txt | grep '.' | wc -l 
## the number of times the matched word is output calculate its count which will be final output
