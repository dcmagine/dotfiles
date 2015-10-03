#!/bin/bash

echo copying .bash_profile to ~/.bash_profile
cp .bash_profile ~/

echo copying .bashrc to ~/.bashrc
cp .bashrc ~/

echo copying .osx to ~/.osx
cp .osx ~/
chmod +x ~/.osx

echo copying .gitconfig to ~/.gitconfig
cp .gitconfig ~/

read -p	"Do you want to run .osx? (y/n)" -n 1 -r REPLY
echo
if [[ $REPLY =~ [Yy] ]]
then
	echo Setting osx defaults
	source ~/.osx
else
	echo Skipping osx defaults
fi

read -p "Create symlink to Sublime? (y/n)" -n 1 -r DoSlime
echo
if [[ $DoSlime =~ [Yy] ]]
then
	echo Creating slime symlink
	ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/slime
else
	echo Skipping slime symlink
fi