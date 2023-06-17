#!/bin/bash

if [[ $# -eq 1 ]]; then		# if arg provided open file
  file="$1"              
  xdg-open "$file"        
else				# else open all files from stdin
  while read -r file; do
    xdg-open "$file" 
done
fi

