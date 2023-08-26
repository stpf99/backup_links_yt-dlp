#!/bin/bash

input_file="mtmn _ Listen on hearthis.at.html"
output_file="playlist.txt"

# Ensure the output file is empty
> "$output_file"

# Regular expression to match HTTP links
regex='https:\/\/hearthis\.at\/mtmn\/[^\/]+\/'

while IFS= read -r line; do
    while [[ $line =~ $regex ]]; do
        matched_link="${BASH_REMATCH[0]}"
        echo "$matched_link" >> "$output_file"
        line="${line#*"${BASH_REMATCH[0]}"}"
    done
done < "$input_file"

echo "HTTP links extracted and saved in $output_file"

