#! /bin/sh
# Put the .spacemacs file into place in /~

echo "Replacing ~/.spacemacs with the one in the current folder"
cp .spacemacs ~
echo ".spacemacs copied to ~"
echo "check .spacemacs in ~:"
ls -a -l ~ | grep '.spacemacs'
