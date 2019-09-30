# This script is for replacing the substring in the list of files
# in current directory
#!/bin/bash
IFS=$'\n'
FILES=$(ls *pdf)
for FILE in $FILES
do
 echo "renaming ${FILE} to ${FILE// ( old text )/new text} "
 mv ${FILE} ${FILE// ( old text )/new text}  
done
