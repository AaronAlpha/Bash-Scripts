#!/bin/bash

echo -e "This script automates the process of granting \"executing\" permissions to BASH files: 'chmod +x file.sh'.\n"

a=$1
b="${a: -2}" 

# the above 2 lines: 1) stores the result of the 1st cli arg passed; 2) gets that last 2 chars from the string read-in (hard-coded as we expect the file type to be a Bash file)

# echo "$b" # does output "sh"!

if [ "$b" = "sh" ]; then

  eval "$(chmod +x "$a")"

  echo "Added executing permissions!"

else 
  echo "Incorrect permission type! Process Aborted."


fi 
