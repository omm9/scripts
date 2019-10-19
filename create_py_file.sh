#!/bin/bash
##########################
# This program is used create a new python file with the shabang included, made executable and opened in Vim to edit the file
# Copy file to /usr/local/bin to use it anywhere
# Usage: create_py_file.sh filename.sh
##########################
touch $1
chmod +x $1
echo "#!/usr/bin/python3" >> $1
vim $1
