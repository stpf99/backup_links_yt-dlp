#!/bin/bash

input_file="playlist.txt"
output_file="cleaned.txt"

# Use grep to filter out duplicate lines and write to the output file
grep -P '^(.*)$' "$input_file" | sort -u > "$output_file"

echo "Cleaned file generated: $output_file"
