#!/bin/bash

#This is a simple bash script to check for updates to the system and will begin
#the installation process automatically.


sudo apt update -yy
sudo apt full-upgrade -yy
sudo apt dist-upgrade -yy
sudo apt autoremove -yy
sudo apt purge
sudo apt clean
sudo apt update -yy
sudo apt full-upgrade -yy
exit

