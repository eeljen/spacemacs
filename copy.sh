#! /bin/sh
# Copy the ~/.spacemacs file to the project.

echo "Copying ~/.spacemacs to current folder"
cp ~/.spacemacs .
echo "~/.spacemacs copied here"
echo "check .files in current folder:"
ls -a -l
