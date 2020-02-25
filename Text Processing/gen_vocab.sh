#!/bin/bash

# Replace this line with a sequence of shell commands connected with Unix pipes ("|")
cat test.in.txt | tr ' ' '\n' | sort | uniq | grep -v '^$'

# grep -v '^$' added to remove the extra line which contains space