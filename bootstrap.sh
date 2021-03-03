#!/bin/bash

sudo apt update
sudo apt upgrade

sudo apt install git -y
sudo apt install i3 -y
sudo apt install vim -y

ln -s .vimrc ~/.vimrc
ln -s .config/git/ignore ~/.config/git/ignore

cd ~
mv Downloads downloads
mv Pictures pictures
mv Documents documents
mv Videos videos
mv Templates templates
mv Music music
mv Pictures pictures

sudo apt autoremove
