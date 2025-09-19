#!/bin/bash
# unit7.1.sh
# Usage: ./unit7.1.sh filename.txt

if [ $# -ne 1 ]; then
echo "Usage: $0 <filename>"
exit 1
fi
Checks if exactly one argument is provided.

If not, it prints usage instructions and exits.

Set Filename Variable
bash

file="$1"
if [ -e "$file" ]; then
echo "File exists: $file"
echo "-- contents --"
cat -- "$file"
f the file exists, it prints confirmation and displays its contents using cat.

File Does Not Exist Condition
bash

else
echo "File '$file' does not exist."
read -p "Create it now? (y/N): " ans
case "$ans" in
[Yy]*) touch "$file"; echo "Created $file"; echo "You can edit it using your favorite editor." ;;
*) echo "Not creating file." ;;
esac
fi 
If the file does not exist:

Prints a message.

Prompts the user if they want to create the file.

If the user types 'y' or 'Y', the file is created with touch and a message is printed.

Any other response will skip file creation with a message.

What This Script Does
Checks if a given file exists and prints its contents if it does.

If not, it offers to create the file interactively.

This is a practical script for managing files and learning basic shell scripting concepts like arguments, conditions, and file operations.
