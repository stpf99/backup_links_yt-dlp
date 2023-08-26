#!/bin/bash

input_file="cleaned.txt"
output_file="cleaned_from_words.txt"

# Words to exclude (separated by '|')
words_to_exclude="#commented|#|#stage|#description|#follower|#following|#reshares|#sets|#tracks"

# Use grep to exclude lines containing specified words and write to the output file
grep -vE "$words_to_exclude" "$input_file" > "$output_file"

echo "Cleaned file generated: $output_file"
