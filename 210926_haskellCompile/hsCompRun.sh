#!/bin/bash


a="$1"
b="${a: -2}" # getting the last 2 chars of the haskell file passed - the file extension (hs)

len=${#a} # getting the length of the passed in file name

echo "$b"
echo -e "Compiling and running the Haskell script.\n"


if [ "$b" = "hs" ]; then
  
  eval "$(ghc "$a")" # have to check if exit code of this command is 1 (basically not 0), and if so I can run a diff output that the compile failed and thus the run didn't occur


  echo -e "Compiled!\n"
  echo -e "Running now...\n"
  echo -e "----------------code below----------------\n"
  eval ./"${a:0:len-3}"

  
  echo -e "----------------code above----------------\n"
  echo "Yippie, it ran"
else 
  echo "Invalid file - not a Haskell program."


fi

