#!/bin/bash

#install stuff
what=lazdialog 
extension=
#peut être extension vide 
 
echo "killing running instances"
killall $what

echo "remove symbolic link from usr bin"
sudo rm /usr/bin/$what

echo "done."