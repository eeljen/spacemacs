#! /bin/sh
# Copy the ~/.spacemacs file to the project.

echo "Copying ~/.spacemacs to current folder"
cp ~/.spacemacs .
echo "~/.spacemacs copied here"
echo "files in folder:"
ls -a -l
