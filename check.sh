#!/bin/bash

dir="var/www/html/security/snapshots"  
max_files=1209600

# Count the number of files in the directory
num_files=$(ls "$dir" | wc -l)

# Check if the number of files is greater than the maximum
if [ "$num_files" -gt "$max_files" ]; then
   echo "Deleting all files in $dir..."
   find "$dir" -type f -delete
   echo "All files deleted."
else
   echo "No files deleted. Number of files in $dir is less than or equal to $max_files."
fi
