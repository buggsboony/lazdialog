#!/bin/bash

#install stuff
what=lazdialog   
extension=
#peut être extension vide

echo "Installation.."
echo "Set executable..."

cd ..
chmod +x $what$extension
#echo "lien symbolique vers usr bin"
sudo ln -s "$PWD/$what$extension" /usr/bin/$what
echo "done."

