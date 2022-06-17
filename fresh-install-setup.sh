!#/bin/bash
#
#    CypherOxide Pentesting Build Setup 1.0
#
#  This is a script meant to help setup a pentesting build like the one that I use.  After years
#  of reinstalling, reimaging, and downloading dozens of gigabytes whilel setting a fresh install,
#  I have decided to create this setup script to streamline the process.  With so many tools and
#  programs that I have grown accustomed to having, it's hard to remember what I had when I come
#  back and do a fresh clean install.  This script is meant to fix that and automate the many git-
#  repos, source list modifications, and install commands used in setting up my ideal distro for
#  daily use, CTF Events, and pentesting/forensics contracts.  I'm sure there are a ton of probl-
#  ems with this script, and they will be sorted out as I create the time for debugging.  As I am
#  extremely lazy and don't care about good looking code or scripts, I hope you can get past my
#  disgusting coding and scripting skills.  Thanks.
#
#  --Angel (a.k.a. CypherOxide) Santiago
#
#
echo "Let's get you up to date with your base install."
#
#
sudo apt update -yy
sudo apt full-upgrade -yy
sudo apt dist-upgrade -yy
sudo apt --fix-broken install
sudo apt autoremove -yy
sudo apt clean
sudo apt purge
sudo apt update -yy
sudo apt full-upgrade --fix-missing

#
#
echo "Alright, now let's get some functionality set up, boss!"
#
#
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
#
#
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
#
sudo apt update && sudo apt install brave-browser spotify-client -y
#
#
echo "I like using Snaps and Flatpaks. It breaks fewer things on my system."
#
#
sudo apt install snapd & flatpak -y
#
#
systemctl restart snapd.service
#
#
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
#
#
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
#
#
flatpak install com.anydesk.Anydesk.flatpakref
#
#
flatpak install com.skype.Client.flatpakref
#
#
flatpak install com.vinszent.GnomeTwitch.flatpakref
#
#
flatpak install org.telegram.desktop.flatpakref
#
#
flatpak install us.zoom.Zoom.flatpakref
#
#
echo "Alright. We've got a few things taken care of; let's continue"
#
#
sudo apt update
#
#
sudo apt install yakuake gimp libreoffice vlc filezilla transmission geany audacious handbrake kendlive timeshift gimp kazam neofetch krita bettercap hostapd-wpe mdk4 hcxdumptool hcxtools github-desktop gparted
#
#
echo "Okay, let's get started on the big stuff.  This may take awhile depending on your network speed and computer performance."
#
#
sudo apt install kali-linux-everything
#
#
echo "Okay, that should be it.  Anything else will have to be a matter of preferrence or forgotten about until it's needed.  Congratulations, you're all set!"
#
#
sudo apt --fix-broken install
#
sudo apt update -yy
#
sudo apt upgrade --fix-missing
#
sudo apt full-upgrade -yy
#
sudo apt autoremove -yy
#
sudo apt purge
#
sudo apt clean
#
#
#
#
#
#  end of the script
