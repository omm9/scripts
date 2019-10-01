# This script is for replacing the substring in the list of files
# in current directory
#!/bin/bash
IFS=$'\n'
FILES=$(ls *${1})
echo "Arg 1: Type of files(EXT). Example: pdf or jpg"
echo "Arg 2: Text to be replaced"
echo "Arg 3: Text to replace with"
echo " For instance $ ./replace_substring_in_files.sh JPG 'orginal substring' 'text to be replaced with' "
echo " For files with ${1} Ext, you want to change the substring ${2} to ${3} "
for FILE in $FILES
do
 echo "renaming ${FILE} to ${FILE//$2/$3} "
 mv ${FILE} ${FILE//$2/$3}  
done
