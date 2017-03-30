#!/bin/bash
# Count of all items in a directory

# This will ask for what directory to search in, then what extension filetype to search for,
# then output the count of all items in it and sub directories.


# Ask for Directory to search in:
echo "Please enter in the full filepath to the Directory you wish to search: "
read DIR

# For Debugging
# echo "$DIR"

# Ask for filetype to search for:
echo "Please enter the type of file to search for.  (Eg: .emlx): "
read EXT

# For Debugging
# echo "$EXT"

cd "$DIR"

echo "The total amount of $EXT files is: " 
find . -type f | grep $EXT | wc -l