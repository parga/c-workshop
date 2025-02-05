#!/bin/bash

read -p 'Which c file to watch?: ' file_name
read -p 'Which gcc flags? Type them all with a space between: ' opt_flags
old_file_sig=$(stat $file_name)
echo "Watching $file_name for changes..."
while true
do
  new_file_sig=$(stat $file_name)
  if [[ "$new_file_sig" != "$old_file_sig" ]]; then
        echo ""
        echo "$file_name changed... compiling and running"
        echo ""
        clang $file_name -o "main"
        old_file_sig=$new_file_sig
        echo ""
        echo "Watching $file_name for changes..."
  fi
  sleep 1
done
