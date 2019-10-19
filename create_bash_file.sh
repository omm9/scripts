#!/bin/bash
##########################
# This program is used create a new bash file with the shabang included, made executable and opened in Vim to edit the file
# Copy file to /usr/local/bin to use it anywhere
# Usage: create_bash_file.sh filename.sh
##########################
touch $1
chmod 755 $1
echo "#!/bin/bash" >> $1
vim $1
