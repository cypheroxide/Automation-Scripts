#!/bin/bash
#
#This is a simple bash script to check for updates to the system and will begin
#the installation process automatically.
#
#
#
sudo apt update -y
sudo apt full-upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo apt purge
sudo apt clean
sudo apt update -y
sudo apt full-upgrade -y
#
#
#
#
# end of script
